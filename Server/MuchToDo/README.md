# MuchTodo Containerization and Kubernetes Deployment

## Project Overview

This project containerizes the MuchTodo Golang backend application and deploys it with MongoDB using Docker, Docker Compose, Kubernetes, and Kind.

The backend API runs on port 8080 and connects to MongoDB for data storage. It includes a health endpoint at `/health`.

## Technologies Used

- Golang
- Docker
- Docker Compose
- MongoDB
- Kubernetes
- Kind
- NGINX Ingress Controller

## Project Structure

```text
container-assessment/
├── Dockerfile
├── docker-compose.yml
├── .dockerignore
├── kind-config.yaml
├── kubernetes/
│   ├── namespace.yaml
│   ├── mongodb/
│   │   ├── mongodb-secret.yaml
│   │   ├── mongodb-configmap.yaml
│   │   ├── mongodb-pvc.yaml
│   │   ├── mongodb-deployment.yaml
│   │   └── mongodb-service.yaml
│   ├── backend/
│   │   ├── backend-secret.yaml
│   │   ├── backend-configmap.yaml
│   │   ├── backend-deployment.yaml
│   │   └── backend-service.yaml
│   └── ingress.yaml
├── scripts/
│   ├── docker-build.sh
│   ├── docker-run.sh
│   ├── k8s-deploy.sh
│   └── k8s-cleanup.sh
├── evidence/
└── README.md

