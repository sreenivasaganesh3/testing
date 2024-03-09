resource "azurerm_app_service_plan" "appservice" {
  name                = "${var.appservice}"
  location            = "${var.location}"
  resource_group_name = "${var.rgname}"
  kind                = "elastic"


  sku {
    tier = "WorkflowStandard"
    size = "WS1"
  }
}

resource "azurerm_logic_app_standard" "logicapp" {
  name                       = "${var.logicapp}"
  location                   = "${var.location}"
  resource_group_name        = "${var.rgname}"
  app_service_plan_id        = azurerm_app_service_plan.appservice.id
  storage_account_name       = azurerm_storage_account.sa.name
  storage_account_access_key = azurerm_storage_account.sa.primary_access_key

  app_settings = {
    "FUNCTIONS_WORKER_RUNTIME"     = "node"
    "WEBSITE_NODE_DEFAULT_VERSION" = "~18"
  }
}




