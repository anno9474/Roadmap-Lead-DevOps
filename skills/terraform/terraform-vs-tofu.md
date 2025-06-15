# 🆚 Terraform vs OpenTofu

## 🌍 What is Terraform?
Terraform is a formerly open-source Infrastructure as Code (IaC) tool developed by HashiCorp.  
It allows engineers to define, manage, and provision the full lifecycle of infrastructure.

## 🐘 What is OpenTofu?
OpenTofu is a fork of Terraform. It is open-source and community-driven.  
It shares many similarities with Terraform, with some key differences such as **state encryption** and **early variable evaluation**.


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
