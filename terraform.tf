terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.27.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.46.1"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.0.0"
    }
  }
}

