# Runbook

## Health Check

Run:

curl http://starttech-muchtodo-alb-1036653731.us-east-1.elb.amazonaws.com

## Deploy Backend

Run:

./scripts/deploy-backend.sh

## Deploy Frontend

Run:

./scripts/deploy-frontend.sh

## Rollback

Run:

./scripts/rollback.sh

## Troubleshooting

Check:

- EC2 instance health
- Target group health
- Auto Scaling Group activity
- ECR image availability
- CloudWatch logs
