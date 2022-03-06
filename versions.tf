terraform {
  required_version = ">= 1.0.1"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 2.78.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 1.4"
    }
    template = {
      source  = "hashicorp/template"
      version = "~> 2.1"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.1"
    }
  }
}
