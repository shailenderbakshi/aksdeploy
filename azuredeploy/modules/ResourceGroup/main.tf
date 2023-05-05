resource "azurerm_resource_group" "rsg" {
  name     = var.rsg_Name
  location = var.location
}