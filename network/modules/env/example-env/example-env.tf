resource "azurerm_network_security_rule" "test" {
  name                        = "test123"
  resource_group_name         = "${azurerm_resource_group.test.name}"
  network_security_group_name = "${azurerm_network_security_group.test.name}"
  protocol                    = "Tcp"
  source_port_range           = "*"
  source_address_prefix       = "*"
  destination_port_range      = "*"
  destination_address_prefix  = "*"
  direction                   = "Outbound"
  access                      = "Allow"
  priority                    = 100
}
