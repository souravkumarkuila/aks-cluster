resource "azurerm_resource_group" "aksRG" {
  name     = var.rg_name
  location = var.rg_location
  
}