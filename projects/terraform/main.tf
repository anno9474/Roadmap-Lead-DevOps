resource "azurerm_resource_group" "test-resource-group" {
    name        = "test-storage-resource"
    location    = "West Europe"
}

resource "azurerm_storage_account" "test-storage-account" {
    name                        = "anno9474storageaccount"
    resource_group_name         = azurerm_resource_group.test-resource-group.name
    location                    = azurerm_resource_group.test-resource-group.location
    account_tier                = "Standard"
    account_replication_type    = "GRS"

    tags = {
        environment = "staging"
    }
}