# 1. Define where to download the provider plugin and required version
terraform {
  required_version = ">= 1.5.0" # Minimum Terraform CLI version

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"        # Locks the plugin version to prevent breaking changes
    }
  }
}

# 2. Configure the provider settings (Authentication & Defaults)
provider "aws" {
  region = "us-east-1"
  
  # Best Practice: Use default tags to automatically label all resources in this project
  default_tags {
    tags = {
      Environment = "Production"
      ManagedBy   = "Terraform"
    }
  }
}
