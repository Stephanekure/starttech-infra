variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "subnet_ids" {
  description = "List of private subnet IDs for Redis"
  type        = list(string)
}