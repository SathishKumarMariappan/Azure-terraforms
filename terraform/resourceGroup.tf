
resource "azurerm_resource_group" "resourcegroup" {
  name     = "terraform-common-resourse"
  location = "West Europe"
}

resource "azurerm_resource_group" "resourcegrupfeature" {
  name     = "terraform-feature-resourse"
  location = "West Europe"
}

resource "azurerm_resource_group" "resourcegroup222" {
  name     = "terraform-111-resourse"
  location = "West Europe"
}

resource "azurerm_resource_group" "resourcegroup333" {
  name     = "terraform-444-resourse"
  location = "West Europe"
}
