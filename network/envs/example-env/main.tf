module "base_rules" {
  source = "../../modules/azure/nsg-rules"

  rg_name    = "${var.rg_name}"
  nsg_name   = "${var.nsg_name}"
  env_subnet = "${var.env_subnet}"
}

module "env_rules" {
  source = "../../modules/env/example-env"

  rg_name    = "${var.rg_name}"
  nsg_name   = "${var.nsg_name}"
  env_subnet = "${var.env_subnet}"
}
