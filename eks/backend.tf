terraform {
  backend "s3" {
    bucket = "eks-terraform-backend"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "eks-terraform-backend"
  }
}