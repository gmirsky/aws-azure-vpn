terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.60.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.49.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }
    # backend "s3" {
    #   bucket         = "terraform-state-store"
    #   key            = "terraform.tfstate"
    #   region         = "us-east-1"
    #   dynamodb_table = "terraform-state-lock"
    #   encrypt        = true
    # }
    # backend "s3" {
    #   bucket         = "terraform-state-store"
    #   key            = "terraform.tfstate"
    #   region         = "us-east-1"
    #   dynamodb_table = "terraform-state-lock"
    #   encrypt        = true
    # }
    # backend "azurerm" {
    #   resource_group_name  = "terraform-state-store"
    #   storage_account_name = "terraform.tfstate"
    #   container_name       = "terraform-state-lock"
    #   key                  = "terraform.tfstate"
    #   encrypt              = true
    # }
  }
}
#
