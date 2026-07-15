#variable of resource group

variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
    tags     = map(string)
  }))
}

# variable of storage account
variable "storage_account" {
  description = "A map of azurerm_storage_account properties to create multiple storage accounts. The key of the map will be used as the name of the storage account."
  type = map(object({
    name                     = string
    location                 = string
    resource_group_name      = string
    account_tier             = string
    account_replication_type = string
    tags                     = map(string)
  }))

}

# variable of virtual network
variable "azurerm_vnet" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
  }))

}

# variable of subnet network
variable "azurerm_subnet" {
  description = "Map of subnet configurations"

  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}

# variable of network interface and virtual machine
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