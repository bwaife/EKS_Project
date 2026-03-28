variable "project_name" {
    description = "Project name used to prefix all resources"
    type        = string
}

variable "vpc_id" {
    description = "ID of the VPC"
    type = string
}

variable "public_subnet_ids" {
    description = "IDs of the public subnets"
    type = list(string)
}

variable "private_subnet_ids" {
    description = "IDs of the private subnets"
    type = list(string) 
}

variable "cluster_version" {
    description = "Kubernetes version for the EKS cluster"
    type        = string
    default     = "1.31"
}

variable "node_instance_type" {
    description = "EC2 instance type for EKS worker nodes"
    type        = string
    default     = "t3.medium"
}

variable "node_desired_size" {
    description = "Desired number of worker nodes in the EKS cluster"
    type        = number
    default     = 2
}

variable "node_min_size" {
    description = "Minimum number of worker nodes in the EKS cluster"
    type        = number
    default     = 1
}

variable "node_max_size" {
    description = "Maximum number of worker nodes in the EKS cluster"
    type        = number
    default     = 4
}

variable "region" {
    description = "AWS region"
    type        = string
}