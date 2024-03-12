resource "azurerm_data_factory" "adf" {
  name                = "${var.adfname}"
  location            = "${var.location}"
  resource_group_name = "${var.rgname}"

}
