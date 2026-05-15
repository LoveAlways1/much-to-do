variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used for naming AWS resources"
  type        = string
  default     = "starttech-muchtodo"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "prod"
}

variable "mongo_uri" {
  description = "MongoDB Atlas connection string"
  type        = string
  sensitive   = true
}

variable "jwt_secret_key" {
  description = "JWT secret key for backend authentication"
  type        = string
  sensitive   = true
}

variable "instance_type" {
  description = "EC2 instance type for backend servers"
  type        = string
  default     = "t3.micro"
}

variable "desired_capacity" {
  description = "Desired number of backend EC2 instances"
  type        = number
  default     = 2
}

variable "min_size" {
  description = "Minimum number of backend EC2 instances"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum number of backend EC2 instances"
  type        = number
  default     = 3
}
