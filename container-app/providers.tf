terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.44"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "~> 0.11"
    }
  }

  backend "s3" {
    bucket         = "tfstate-f7380644-d02d-4388-93da-6b30027f475a"
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tflock-f7380644-d02d-4388-93da-6b30027f475a"
    encrypt        = true
  }
}

provider "aws" {
  region = var.region
}