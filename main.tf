
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

# Lecture du groupe de ressources existant CR460
data "azurerm_resource_group" "lab" {
  name = "Polymtl-cr460"
}

# Afficher le groupe de ressources Azure
output "resource_group_name" {
  value = data.azurerm_resource_group.lab.name
}

output "resource_group_location" {
  value = data.azurerm_resource_group.lab.location
}
