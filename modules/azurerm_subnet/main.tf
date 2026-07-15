resource "azurerm_subnet" "st" {
# we are creating a subnet without delegation because we want to use it for multiple purposes, such as hosting VMs,
# databases, and other resources that require network connectivity. By not delegating the subnet to a specific service,
# we can maintain flexibility in how we utilize the subnet for various workloads and services within our Azure environment.
    for_each = var.azurerm_subnet
    name = each.value.name
    resource_group_name = each.value.resource_group_name
    virtual_network_name = each.value.virtual_network_name
    address_prefixes = each.value.address_prefixes

  
}