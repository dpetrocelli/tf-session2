# Providers config
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Default provider, it will be used when no provider is declared in the resource.
provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

