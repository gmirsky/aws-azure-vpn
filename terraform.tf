terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.51.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.69.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }
  }
}

