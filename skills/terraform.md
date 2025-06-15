# 🧱 Terraform (Tofu) Learning Plan

## 🔰 Phase 0 – Environment Setup
- Install [Tofu](https://opentofu.org)
- Install `tfenv` for version management
- Setup a separate Git repo for Terraform projects
- Pick a cloud provider: **Azure**

---

## 📗 Phase 1 – Terraform Fundamentals
- What is Tofu vs Terraform?
- Core Concepts: Providers, Resources, Variables, Outputs, State
- CLI Commands: `init`, `plan`, `apply`, `destroy`
- Writing your first `.tf` files: create an Azure Resource Group

**Mini Project**: Provision an Azure Storage Account via Tofu

---

## 🧩 Phase 2 – Code Organization & Best Practices
- File Structure (`main.tf`, `variables.tf`, `outputs.tf`, `providers.tf`)
- Input Variables & Outputs
- Locals, Data Sources
- `terraform.tfvars` & `backend.tf`
- Remote State (Azure Blob)

**Mini Project**: Build a simple VNet with subnets using modules

---

## 🧱 Phase 3 – Modules & Reusability
- Create your own modules
- Use public modules from the Terraform Registry
- Nesting and composing modules
- Versioning modules

**Mini Project**: Create a reusable module for VM deployment in Azure

---

## 🛡️ Phase 4 – Security & State Management
- State file encryption
- Secrets handling (Azure Key Vault or env vars)
- Terraform Cloud/Tofu alternatives for remote state & collaboration

---

## ⚙️ Phase 5 – Automation & CI/CD
- Running Tofu in pipelines (GitHub Actions / Azure DevOps)
- `terraform fmt`, `validate`, `plan` in CI
- Policy enforcement (OPA/Conftest or Sentinel)

**Mini Project**: Deploy infra via Tofu in GitHub Actions workflow

---

## 📊 Phase 6 – Scaling & Team Use
- Workspaces
- Locking & concurrency
- Backend configs per environment (dev/stage/prod)
- Terragrunt or Atmos (optional)

---

## 🎓 Phase 7 – Real-World Projects & Certification
- Build full environments (AKS cluster, App Gateway, VNets)
- Infrastructure documentation in Markdown
- Optional: [HashiCorp Certified: Terraform Associate](https://developer.hashicorp.com/certification/terraform-associate)
