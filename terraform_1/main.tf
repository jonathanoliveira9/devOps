terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.50.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
  profile = "dev"
}