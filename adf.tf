#create resource group
resource "azurerm_resource_group" "rg" {
    name     = "${var.rgname}"
    location = "${var.location}"
    tags      = {
        Environment = "terraform demo"
    }
}


resource "azurerm_data_factory" "adf" {
  name                = "${var.adfname}"
  location            = "${var.location}"
  resource_group_name = "${var.rgname}"

}
