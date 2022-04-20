terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.10.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.2.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.2.2"
    }
  }
}
