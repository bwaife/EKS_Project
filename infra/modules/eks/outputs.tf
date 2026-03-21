output "cluster_name" {
    description = "The name of the EKS cluster"
    value       = aws_eks_cluster.main.name
}

output "cluster_endpoint" {
    description = "Endpoint for the EKS cluster API server"
    value       = aws_eks_cluster.main.endpoint
}

output "cluster_ca_certificate" {
    description = "Certificate authority data for the EKS cluster"
    value       = aws_eks_cluster.main.certificate_authority[0].data
}

output "cluster_oidc_issuer_url" {
    description = "OIDC issuer URL for IRSA"
    value = aws_eks_cluster.main.identity[0].oidc.issuer
}

output "oidc_provider_arn" {
    description = "ARN of the OIDC provider for IRSA"
    value = aws_iam_openid_connect_provider.eks.arn
}

output "node_group_role_arn" {
    description = "ARN of the node group IAM role"
    value = aws_iam_role.eks_nodes.arn
}