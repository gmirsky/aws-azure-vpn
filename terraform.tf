terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.41.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.3.0"
    }
  }
}
#