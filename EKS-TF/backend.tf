terraform {
   backend "s3" {
     bucket       = "dev-raj-tf-bucket"
     region       = "ap-south-1"
     key          = "End-to-End-Kubernetes-DevSecOps-Tetris-Project/EKS-TF/terraform.tfstate"
     use_lockfile = false
     encrypt      = true
   }
  required_version = ">=1.14.0"
  required_providers {
    aws = {
      version = ">= 5.49.0"
      source  = "hashicorp/aws"
    }
  }
}
