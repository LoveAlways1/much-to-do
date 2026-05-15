# Month 3 DevOps Assessment - StartTech

## Submission Repository

https://github.com/LoveAlways1/much-to-do/tree/feature/full-stack

## Work Completed

- Forked the original application repository.
- Verified frontend install, lint, and build.
- Verified backend runs locally.
- Verified backend health endpoint.
- Created backend Dockerfile.
- Built backend Docker image.
- Pushed backend Docker image to Amazon ECR.
- Created AWS infrastructure with Terraform.
- Created VPC, subnets, route table, internet gateway, security groups.
- Created Application Load Balancer and target group.
- Created Auto Scaling Group with EC2 backend instances.
- Created ECR repository.
- Created S3 frontend bucket.
- Created CloudWatch log group.
- Created MongoDB Atlas free cluster.
- Verified ALB routing with nginx fallback.

## Important Notes

The real backend Docker image was built and pushed to ECR.

During final AWS routing verification, nginx was temporarily used on EC2 to confirm that ALB, ASG, EC2, Docker, networking, and target group routing were working.

CloudFront was not completed because AWS required account verification before creating CloudFront resources.

## Evidence

Screenshots should show:

- GitHub fork on feature/full-stack branch
- Dockerfile
- Terraform files if included
- ALB page
- Auto Scaling Group
- EC2 running instances
- ECR repository with latest image
- S3 bucket
- CloudWatch log group
- MongoDB Atlas cluster
- curl output showing nginx page through ALB

