# This file is used to define the main configuration for the environment. 
# It will call the modules that are defined in the modules folder and pass the 
# necessary variables to them.

module "resource_group" {
  source          = "../modules/azurerm_resource_group"
  resource_groups = var.resource_groups

}

module "storage_account" {
  depends_on      = [module.resource_group]
  source ="../modules/azurerm_storage"
  storage_account = var.storage_account
}

module "azurerm_vnet" {
  depends_on   = [module.storage_account]
  source       = "../modules/azurerm_vnet"
  azurerm_vnet = var.azurerm_vnet
}

module "azurerm_subnet" {
  depends_on     = [module.azurerm_vnet]
  source         = "../modules/azurerm_subnet"
  azurerm_subnet = var.azurerm_subnet
}

module "azurerm_nic" {
  depends_on         = [module.azurerm_subnet]
  source             = "../modules/azurerm_nic"
  azurerm_nic_and_vm = var.azurerm_nic_and_vm
}

