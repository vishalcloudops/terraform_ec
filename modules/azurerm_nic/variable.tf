variable "azurerm_nic_and_vm" {
  type = map(object({
    nic_name            = string
    vm_name             = string
    location            = string
    resource_group_name = string
    admin_username      = string
    admin_password      = string
    size                = string
  }))
}

