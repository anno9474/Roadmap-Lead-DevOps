# Terraform Providers for Azure Infrastructure

## 💠 Azure Providers

| Provider     | Purpose                                          |
|--------------|--------------------------------------------------|
| [AzureRM](https://registry.terraform.io/providers/hashicorp/azurerm/latest)      | Core Azure resources (VMs, storage, networking)  |
| [AzAPI](https://registry.terraform.io/providers/azure/azapi/latest)        | Direct ARM API access for new/unsupported features |
| [AzureAD](https://registry.terraform.io/providers/hashicorp/azuread/latest)      | Entra ID (users, groups, apps, service principals) |
| [AzureDevOps](https://registry.terraform.io/providers/microsoft/azuredevops/latest)  | DevOps platform (repos, pipelines, agents)       |
| [AzureStack](https://registry.terraform.io/providers/hashicorp/azurestack/latest)   | Azure Stack Hub (hybrid/on-premises resources)   |


> ⚠️ It's common to use multiple providers in a single project. For example, use `AzureRM` to deploy infrastructure and `AzureAD` to manage identities. Make sure to configure provider aliases when needed.

---

### AzureRM

Manages core and stable Azure resources such as virtual machines, storage accounts, virtual networks, and public IPs.  
It abstracts most of Azure’s complexity through Terraform-native types.

**Example:**  
```hcl
resource "azurerm_resource_group" "example" {
  name     = "my-rg"
  location = "West Europe"
}
```
---

### AzAPI

Provides direct access to Azure Resource Manager (ARM) APIs using JSON-based configurations.
Useful for deploying resources or features not yet supported by AzureRM.

**Example:**  
```hcl
resource "azapi_resource" "example" {
  type      = "Microsoft.ContainerService/managedClusters@2023-01-01"
  name      = "aks-cluster"
  parent_id = azurerm_resource_group.example.id
  location  = "West Europe"
  body      = jsonencode({ /* full ARM config here */ })
}
```

---

### AzureAD

Manages Microsoft Entra ID (formerly Azure Active Directory) resources such as users, groups, applications, and service principals.

**Example:**  
```hcl
resource "azuread_group" "dev_team" {
  display_name = "DevOps Team"
  security_enabled = true
}
```
---

### AzureDevOps

Used to manage Azure DevOps resources including agents, repositories, projects, pipelines, and queries.

**Example:**  
    
```hcl  
resource "azuredevops_project" "example" {
  name       = "my-devops-project"
  visibility = "private"
}
```
---

### AzureStack

Supports Azure Stack Hub resources like virtual machines, DNS, virtual networks, and storage.

**Example:**  
```hcl  
resource "azurestack_storage_account" "example" {
  name                     = "mystorageacct"
  resource_group_name      = "my-rg"
  location                 = "local"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
```
