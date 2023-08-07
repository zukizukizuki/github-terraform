terraform {
  required_version = ">= 1.5.0"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.4.0"
    }
  }
  backend "s3" {
    region = "ap-northeast-1"
  }
}

provider "github" {
  owner    = "zukizukizuki"
  alias    = "zukizukizuki"
  token    = var.ghe_token
  base_url = "https://github.com/zukizukizuki"
}