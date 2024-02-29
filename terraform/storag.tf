
# resource "azurerm_storage_account" "storageOne" {
#   name                     = "20240229111111"
#   resource_group_name      = azurerm_resource_group.resourcegroup.name
#   location                 = azurerm_resource_group.resourcegroup.location
#   account_tier             = "Standard"
#   account_replication_type = "GRS"

#   tags = {
#     environment = "staging"
#   }
# }

# resource "azurerm_storage_account" "storageTwo" {
#   name                     = "20240229222222"
#   resource_group_name      = azurerm_resource_group.resourcegroup.name
#   location                 = azurerm_resource_group.resourcegroup.location
#   account_tier             = "Standard"
#   account_replication_type = "GRS"

#   tags = {
#     environment = "staging"
#   }
# }

# resource "azurerm_storage_account" "storageThree" {
#   name                     = "20240229333333"
#   resource_group_name      = azurerm_resource_group.resourcegroup222.name
#   location                 = azurerm_resource_group.resourcegroup222.location
#   account_tier             = "Standard"
#   account_replication_type = "GRS"

#   tags = {
#     environment = "staging"
#   }
# }