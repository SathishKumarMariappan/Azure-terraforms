
resource "azurerm_resource_group" "resourcegroup" {
  name     = "terraform-common-resourse"
  location = var.resource_group_location
}

resource "azurerm_resource_group" "resourcegrupfeature" {
  name     = "terraform-feature-resourse"
  location = var.resource_group_location
  tags = {
     environment = "staging"
   }
}

resource "azurerm_resource_group" "resourcegroup222" {
  name     = "terraform-111-resourse"
  location = var.resource_group_location
}

resource "azurerm_resource_group" "resourcegroup333" {
  name     = "terraform-444-resourse"
  location = var.resource_group_location
}


