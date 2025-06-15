# 🆚 Terraform vs OpenTofu

## 🌍 What is Terraform?
Terraform is a formerly open-source Infrastructure as Code (IaC) tool developed by HashiCorp.  
It allows engineers to define, manage, and provision the full lifecycle of infrastructure.

## 🐘 What is OpenTofu?
OpenTofu is a fork of Terraform. It is open-source and community-driven.  
It shares many similarities with Terraform, with some key differences such as **state encryption** and **early variable evaluation**.

---

## 🔑 Key Features (Shared by Terraform & OpenTofu)

- **Declarative Language**  
  Define the desired end state of your infrastructure, and the tool figures out how to reach it.

- **Provider Agnostic**  
  Support for a wide range of providers like AWS, Azure, Google Cloud, Kubernetes, Helm, and more.

- **Modularity**  
  Reusable modules help break down infrastructure into manageable, maintainable components.

- **Stateful Management**  
  Infrastructure state is tracked using a state file, enabling Terraform/OpenTofu to detect drift and perform updates efficiently.

- **Versioning**  
  Infrastructure code can be versioned and bundled into modules for consistent reuse across environments.

- **CI/CD Integration**  
  Easily integrates into most CI/CD pipelines (e.g., GitHub Actions, Azure DevOps, GitLab CI).


---

## 📊 Feature Comparison

| Feature                | OpenTofu       | Terraform       |
|------------------------|----------------|-----------------|
| License                |  MPL 2.0       |     BSL 1.1     |
| License Type           |✅ Open-source  |  ❌ Source-available(restriced production use)|
|Language                |  HCL           |     HCL         |
| State Management       |  ✅ Yes        |     ✅ Yes     |
| State Encryption       |  ✅ Yes        |     ❌ No      |
| Early variable evaluation | ✅ Yes      |     ❌ No      |
| Providers Support      |  ✅ Yes        |     ✅ Yes     |
| Modular Design         |  ✅ Yes        |     ✅ Yes     |
| Community-driven development | ✅ Yes   |     ❌ No      |
| Testing                |  ✅ Yes        |     ✅ Yes     |
|Third-party tools integrations| ✅ Yes   |     ✅ Yes     |
| Policy as Code         |  ✅ Yes        |     ✅ Yes     |
| Secrets management     | ❌ No (Third Party can be used) | ❌ No (Third Party can be used)|

---

## 🧠 Notes
OpenTofu > Terraform as long as you are not already in the HashiCorp ecosystem

[Terraform Best Practices](https://www.terraform-best-practices.com/)