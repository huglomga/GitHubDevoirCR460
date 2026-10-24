
terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  use_cli = false
}

data "azurerm_resource_group" "lab" {
  name = "Polymtl-cr460"
}

output "azure_resource_group" {
  value = data.azurerm_resource_group.lab.name
}
# Validation de la connexion Azure - CR460
