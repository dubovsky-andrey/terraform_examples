terraform {
  required_version = ">= 1.13.4, < 1.14.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.19"
    }
  }
}

provider "aws" {
  region = var.aws_region
}