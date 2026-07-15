variable "storage_account" {
    description = "A map of azurerm_storage_account properties to create multiple storage accounts. The key of the map will be used as the name of the storage account."
    type = map(object({
        name                     = string
        location                 = string
        resource_group_name      = string
        account_tier            = string
        account_replication_type = string
        tags                     = map(string)
    }))
  
}

