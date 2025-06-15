resource "azurerm_resource_group" "resource-group" {
    name        = "test-resource-group"
    location    = "West Europe"
}

resource "azurerm_storage_account" "storage-account" {
    name                        = "anno9474storageaccount"
    resource_group_name         = azurerm_resource_group.resource-group.name
    location                    = azurerm_resource_group.resource-group.location
    account_tier                = "Standard"
    account_replication_type    = "GRS"

    tags = {
        environment = "staging"
    }
}

resource "azurerm_storage_share" "storage-share" {
    name                    = "anno9474storageshare"
    storage_account_id    = azurerm_storage_account.storage-account.id
    quota                   = 5
}

resource "azurerm_recovery_services_vault" "vault" {
    name                = "test-recovery-vault"
    location            = azurerm_resource_group.resource-group.location
    resource_group_name = azurerm_resource_group.resource-group.name
    sku                 = "Standard"
    soft_delete_enabled = true

}

resource "azurerm_backup_container_storage_account" "protection-container" {
    resource_group_name = azurerm_resource_group.resource-group.name
    recovery_vault_name = azurerm_recovery_services_vault.vault.name
    storage_account_id  = azurerm_storage_account.storage-account.id
}

resource "azurerm_backup_protected_file_share" "share-protection" {
  resource_group_name       = azurerm_resource_group.resource-group.name
  recovery_vault_name       = azurerm_recovery_services_vault.vault.name
  source_storage_account_id = azurerm_backup_container_storage_account.protection-container.storage_account_id
  source_file_share_name    = azurerm_storage_share.storage-share.name
  backup_policy_id          = azurerm_backup_policy_file_share.fileshare-policy.id
}

resource "azurerm_backup_policy_file_share" "fileshare-policy" {
    name                = "anno9474recoveryvaultpolixy"
    resource_group_name = azurerm_resource_group.resource-group.name
    recovery_vault_name = azurerm_recovery_services_vault.vault.name

    timezone = "W. Europe Standard Time"

    backup {
        frequency   = "Daily"
        time        = "23:00"
    }

    retention_daily {
        count = 10
    }

    retention_weekly {
        count = 7
        weekdays = ["Sunday", "Wednesday", "Friday", "Saturday"]
    }

    retention_monthly {
        count    = 7
        weekdays = ["Sunday", "Wednesday"]
        weeks    = ["First", "Last"]
    }

    retention_yearly {
        count    = 7
        weekdays = ["Sunday"]
        weeks    = ["Last"]
        months   = ["January"]
    }
}