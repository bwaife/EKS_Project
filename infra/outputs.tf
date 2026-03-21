output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = module.vpc.private_subnet_ids
}

output "vpc_cidr_block" {
  description = "CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

output "cluster_name" {
    description = "The name of the EKS cluster"
    value       = module.eks.cluster_name
}

output "cluster_endpoint" {
    description = "Endpoint for the EKS cluster API server"
    value       = module.eks.cluster_endpoint
}

output "cluster_oidc_issuer_url" {
    description = "OIDC issuer URL for IRSA"
    value = module.eks.cluster_oidc_issuer_url
}

output "oidc_provider_arn" {
    description = "ARN of the OIDC provider for IRSA"
    value = module.eks.oidc_provider_arn
}