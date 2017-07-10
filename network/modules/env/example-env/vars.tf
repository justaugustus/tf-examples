variable "rg_name" {
  description = "Specifies the Azure Resource Group to place resource(s) into."
  default     = ""
}

variable "nsg_name" {
  description = "Specifies the network security group to associate rule to."

  #default = ""
}

variable "env_subnet" {
  description = <<EOF
Denotes the subnet CIDR of the current environment.
Expected format: "a.b.c.d/xx"
EOF

  #default = ""
}
