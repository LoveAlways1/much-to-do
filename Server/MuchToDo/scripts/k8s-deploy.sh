#!/bin/bash
set -e

CLUSTER_NAME="muchtodo-cluster"

echo "Creating Kind cluster if it does not exist..."
if ! kind get clusters | grep -q "$CLUSTER_NAME"; then
  kind create cluster --config kind-config.yaml
else
  echo "Kind cluster already exists."
fi

echo "Building Docker image..."
docker build -t muchtodo-backend:latest .

echo "Loading Docker image into Kind cluster..."
kind load docker-image muchtodo-backend:latest --name "$CLUSTER_NAME"

echo "Installing NGINX Ingress Controller..."
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml

echo "Waiting for NGINX Ingress Controller to be ready..."
kubectl wait -n ingress-nginx --for=condition=Ready pod -l app.kubernetes.io/component=controller --timeout=180s

echo "Applying Kubernetes manifests..."
kubectl apply -f kubernetes/namespace.yaml
kubectl apply -f kubernetes/mongodb/
kubectl apply -f kubernetes/backend/
kubectl apply -f kubernetes/ingress.yaml

echo "Restarting backend deployment to pick up latest config..."
kubectl rollout restart deployment/muchtodo-backend -n muchtodo || true

echo "Waiting for MongoDB deployment..."
kubectl wait --namespace muchtodo --for=condition=available deployment/mongodb --timeout=180s

echo "Waiting for backend deployment..."
kubectl rollout status deployment/muchtodo-backend -n muchtodo --timeout=180s

echo "Deployment completed."
kubectl get pods -n muchtodo
kubectl get svc -n muchtodo
kubectl get ingress -n muchtodo
