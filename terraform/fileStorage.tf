resource "azurerm_resource_group" "resourcegroupfilestorege" {
  name     = var.project_prefics + "file-storage-resourse"
  location = var.resource_group_location
}


# resource "azurerm_storage_account" "file-storage" {
#   name                     = "20240229filestorage"
#   resource_group_name      = azurerm_resource_group.resourcegroupfilestorege.name
#   location                 = azurerm_resource_group.resourcegroupfilestorege.location
#   account_tier             = "Standard"
#   account_replication_type = "GRS"

#   tags = {
#     environment = "staging"
#   }
# }


resource "azurerm_service_plan" "file-service-app-service-plan" {
  name                = "file-service-appserviceplan"
  location            = azurerm_resource_group.resourcegroupfilestorege.location
  resource_group_name = azurerm_resource_group.resourcegroupfilestorege.name
  os_type             = "Linux"
  sku_name            = "P1v2"
}

resource "azurerm_app_service" "example" {
  name                = "file-app-service"
  location            = azurerm_resource_group.resourcegroupfilestorege.location
  resource_group_name = azurerm_resource_group.resourcegroupfilestorege.name
  app_service_plan_id = azurerm_service_plan.file-service-app-service-plan.id

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }

  app_settings = {
    "SOME_KEY" = "fdjmsty"
  }

}