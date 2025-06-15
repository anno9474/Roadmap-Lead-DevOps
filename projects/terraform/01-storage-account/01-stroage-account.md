# 01 - Storage Account Setup with File Share and Backup Policy

## 🔧 Resources Created

- **Resource Group** (`azurerm_resource_group`)
- **Storage Account** (`azurerm_storage_account`)
- **File Share** (`azurerm_storage_share`)
- **Recovery Services Vault** (`azurerm_recovery_services_vault`)
- **Backup Policy** (`azurerm_backup_policy_file_share`)

## 🔗 Relationships

- The **Storage Account** is created inside the **Resource Group**
- The **File Share** is part of the **Storage Account**
- The **Recovery Services Vault** is also in the same **Resource Group**
- The **Backup Policy** is defined in the **Vault** and is meant to be linked to the **File Share**

## 📝 Notes

- The file share quota was set to `5GB`
- The backup policy uses daily backups and has retention rules for daily, weekly, monthly, and yearly snapshots
- All sensitive values are passed using `.auto.tfvars` and **not committed** to the repo


---
```mermaid
graph TD
  RG[Resource Group: test-resource-group]
  style RG fill:#81c784,stroke:#388e3c,stroke-width:2px,rx:15

  SA[Storage Account: anno9474storageaccount]
  style SA fill:#ffcc80,stroke:#f57c00,stroke-width:2px,rx:15

  FS[File Share: anno9474storageshare]
  style FS fill:#c8e6c9,stroke:#388e3c,stroke-width:2px,rx:15

  RSV[Recovery Services Vault: test-recovery-vault]
  style RSV fill:#bbdefb,stroke:#1976d2,stroke-width:2px,rx:15

  BP[Backup Policy: anno9474recoveryvaultpolicy]
  style BP fill:#f0f4c3,stroke:#afb42b,stroke-width:2px,rx:15

  RG -->|Contains| SA
  RG -->|Contains| RSV
  SA -->|Has| FS
  RSV -->|Has| BP
  BP -->|Backup| FS

   linkStyle 0,1,2,3,4 stroke:#1976d2,stroke-width:2px,stroke-dasharray: 5 5,fill:none
   classDef default fill:#fff,stroke:#333,stroke-width:2px;

```