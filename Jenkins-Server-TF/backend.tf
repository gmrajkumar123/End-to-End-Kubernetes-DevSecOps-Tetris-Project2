terraform {
   backend "s3" {
     bucket       = "dev-raj-tf-bucket"
     region       = "ap-south-1"
     key          = "End-to-End-Kubernetes-DevSecOps-Tetris-Project/Jenkins-Server-TF/terraform.tfstate"
     encrypt      = true
     use_lockfile = true
   }
  required_version = ">=1.14.0"
  required_providers {
    aws = {
      version = ">= 6.23.0"
      source  = "hashicorp/aws"
    }
  }
}
