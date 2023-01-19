terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.50.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.39.1"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.3.0"
    }
  }
}
#