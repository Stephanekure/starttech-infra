variable "aws_region" {
  description = "AWS region for infrastructure"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the StartTech VPC"
  type        = string
  default     = "10.0.0.0/16"
}