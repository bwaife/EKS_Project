terraform {
    required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
    region = var.region 
}

module "vpc" {
    source = "./modules/vpc"
    project_name = var.project_name
    vpc_cidr = var.vpc_cidr
    public_subnet_cidrs = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs
    region = var.region
}

module "eks" {
    source = "./modules/eks"

    project_name = var.project_name
    vpc_id = module.vpc.vpc_id
    private_subnet_ids = module.vpc.private_subnet_ids
    public_subnet_ids = module.vpc.public_subnet_ids
    cluster_version = "1.31"
    node_instance_type = var.node_instance_type
    node_desired_size = var.node_desired_size
    node_min_size = var.node_min_size
    node_max_size = var.node_max_size
    region = var.region
  
}