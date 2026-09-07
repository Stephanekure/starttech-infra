variable "frontend_bucket_id" {
  description = "The ID of the S3 bucket"
  type        = string
}

variable "frontend_bucket_regional_domain_name" {
  description = "The regional domain name of the S3 bucket"
  type        = string
}

variable "alb_domain_name" {
  description = "The DNS name of the ALB (Placeholder until Ingress is deployed)"
  type        = string
  default     = "placeholder-alb.us-east-1.elb.amazonaws.com"
}