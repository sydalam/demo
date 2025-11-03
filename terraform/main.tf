terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.19"  # ❌ outdated (latest is ~> 5.x)
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.51.0"  # ❌ outdated (latest is ~> 3.x)
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 7.9"  # ✅ up-to-date
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.7.2"  # ✅ up-to-date
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.38.0"  # ❌ outdated (latest is ~> 2.23.0+)
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

provider "azurerm" {
  features = {}
}

provider "google" {
  project = "my-gcp-project"
  region  = "us-central1"
}

provider "random" {}

provider "kubernetes" {
  config_path = "~/.kube/config"
}