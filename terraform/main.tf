terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"  # ❌ outdated (latest is ~> 5.x)
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.99.0"  # ❌ outdated (latest is ~> 3.x)
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"  # ✅ up-to-date
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"  # ✅ up-to-date
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.11.0"  # ❌ outdated (latest is ~> 2.23.0+)
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