resource "azurerm_storage_account" "storage" {
        for_each = var.storage_account
    name =each.value.name
    location = each.value.location
    resource_group_name = each.value.resource_group_name
    account_tier = each.value.account_tier
    account_replication_type = each.value.account_replication_type
    tags = {
        environment = each.value.tags["environment"]
        cost = each.value.tags["cost"]
    }
  
}