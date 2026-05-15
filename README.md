# StartTech Application

This is the forked application repository for the Month 3 DevOps assessment.

## Repository Mapping

- Frontend React application: `Client/`
- Backend Golang API: `Server/MuchToDo/`
- CI/CD workflows: `.github/workflows/`
- Deployment scripts: `scripts/`

## Backend

The backend was containerized using Docker and pushed to Amazon ECR.

## Frontend

The frontend is built using Node.js and deployed to Amazon S3.

## CI/CD

GitHub Actions workflows are included for:

- Frontend build, audit, and S3 deployment
- Backend tests, Docker build, and deployment preparation

## Infrastructure

Infrastructure is managed in the separate repository:

https://github.com/LoveAlways1/starttech-infra

## Important Deployment Notes

CloudFront was planned as part of the architecture, but AWS account verification blocked creation of new CloudFront distributions during deployment.

The backend Docker image was successfully built and pushed to Amazon ECR. During final infrastructure verification, nginx was temporarily used on the EC2 backend instances to confirm that the ALB, Target Group, EC2 instances, Docker installation, Auto Scaling Group, and network routing were working correctly.
