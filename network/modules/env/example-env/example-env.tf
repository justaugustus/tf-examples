resource "azurerm_network_security_rule" "test" {
  name                        = "test123"
  resource_group_name         = "${var.rg_name}"
  network_security_group_name = "${var.nsg_name}"
  protocol                    = "Tcp"
  source_port_range           = "*"
  source_address_prefix       = "*"
  destination_port_range      = "*"
  destination_address_prefix  = "${var.env_subnet}"
  direction                   = "Outbound"
  access                      = "Allow"
  priority                    = 100
}
