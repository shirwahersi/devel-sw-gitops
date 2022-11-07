terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.38.0"
    }
  }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Project     = var.project
      Environment = var.environment
      Owner       = "infrastructure"
      Managed-By  = "terraform"
      Scope       = "regional"
      Repository  = "https://github.com/shirwahersi/sw-gitops"
    }
  }
}

