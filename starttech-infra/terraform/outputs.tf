output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "public_subnet_1_id" {
  description = "First public subnet ID"
  value       = aws_subnet.public_1.id
}

output "public_subnet_2_id" {
  description = "Second public subnet ID"
  value       = aws_subnet.public_2.id
}

output "backend_security_group_id" {
  description = "Backend security group ID"
  value       = aws_security_group.backend.id
}

output "alb_dns_name" {
  value = aws_lb.backend.dns_name
}

output "frontend_bucket_name" {
  value = aws_s3_bucket.frontend.bucket
}

output "cloudwatch_log_group" {
  value = aws_cloudwatch_log_group.backend.name
}

output "ecr_repository_url" {
  value = aws_ecr_repository.backend.repository_url
}
