resource "azurerm_storage_account" "sa" {
  name                     = "${var.storage}"
  resource_group_name      = "${var.rgname}"
  location                 = "${var.location}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}