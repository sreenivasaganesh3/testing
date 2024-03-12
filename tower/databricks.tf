resource "azurerm_databricks_workspace" "databricks" {
  name                = "${var.databricks}"
  resource_group_name = "${var.rgname}"
  location            = "${var.location}"
  sku                 = "standard"
  
}
