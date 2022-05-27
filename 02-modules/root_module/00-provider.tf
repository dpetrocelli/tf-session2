# Providers config
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
#    backend "s3" {
#     bucket         = "sii-poc-bucket-v2"
#     key            = "tfstate/build-structure.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "sii-poc-dynamodb-v2"
#     encrypt        = true
#     profile        = "sii-sandbox"
#   }
# }

# Default provider, it will be used when no provider is declared in the resource.
provider "aws" {
  region  = var.aws_region["virginia"]
  profile = "ar-itau"
}

# Provider for Source Bucket
provider "aws" {
  alias   = "source"
  region  = var.aws_region["virginia"]
  profile = "ar-itau"
}

# Provider for Destination Bucket
provider "aws" {
  alias   = "destination"
  region  = var.aws_region["oregon"]
  profile = "ar-itau"
}
