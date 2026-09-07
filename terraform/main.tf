terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
module "networking" {
  source   = "./modules/networking"
  vpc_cidr = var.vpc_cidr
}
module "eks" {
  source     = "./modules/eks"
  subnet_ids = module.networking.private_subnets
}
module "storage" {
  source = "./modules/storage"
}
module "cdn" {
  source                               = "./modules/cdn"
  frontend_bucket_id                   = module.storage.frontend_bucket_id
  frontend_bucket_regional_domain_name = module.storage.frontend_bucket_regional_domain_name
}
module "database" {
  source     = "./modules/database"
  vpc_id     = module.networking.vpc_id
  subnet_ids = module.networking.private_subnets
}