# Architecture

Frontend React files are built and deployed to Amazon S3.

Backend Golang API is containerized with Docker, stored in Amazon ECR, and deployed to EC2 instances managed by an Auto Scaling Group.

Traffic flow:

User → ALB → Target Group → EC2 Auto Scaling Group → Docker container

Database:

MongoDB Atlas free-tier cluster is used for persistence.

Monitoring:

CloudWatch Log Group is configured for backend application logs.
