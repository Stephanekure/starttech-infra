variable "vpc_cidr" {
  description = "CIDR block for the StartTech VPC"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS Cluster for tagging"
  type        = string
  default     = "starttech-cluster"
}