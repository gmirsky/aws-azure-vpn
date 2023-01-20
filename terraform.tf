terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.51.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.40.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.3.0"
    }
  }
}
#