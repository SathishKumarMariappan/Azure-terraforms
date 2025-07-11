data "azurerm_subscription" "primary" {
}

data "azurerm_client_config" "client" {
}

resource "azurerm_role_definition" "role" {
  role_definition_id = "e4451722-fbc3-48ac-ad3f-74869747fba0"
  name               = "my-custom-role-definition"
  scope              = data.azurerm_subscription.primary.id

  permissions {
    actions     = ["Microsoft.Resources/subscriptions/resourceGroups/read", 
    "Microsoft.Resources/subscriptions/resourceGroups/admin" ]
    not_actions = []
  }

  assignable_scopes = [
    data.azurerm_subscription.primary.id,
  ]
}

resource "azurerm_role_assignment" "assignment" {
  name               = "e4451722-fbc3-48ac-ad3f-74869747fb23"
  scope              = data.azurerm_subscription.primary.id
  role_definition_id = azurerm_role_definition.role.role_definition_resource_id
  principal_id       = data.azurerm_client_config.client.object_id
}
