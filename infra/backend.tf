terraform {
  backend "s3" {
    bucket = "eks-terraform-state-waifeb"
    key = "eks/terraform.tfstate"
    region = "eu-west-1"
    dynamodb_table = "eks-terraform-locks"
    encrypt = true    
  }
}