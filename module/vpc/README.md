# 🚀 Terraform VPC Module

A reusable Terraform module to provision a complete AWS VPC setup with dynamic subnet configuration, public/private segregation, and internet access for public subnets.

---

## 📌 Features

- Create a **custom VPC**
- Support for **multiple subnets**
- Automatic separation of:
  - 🌐 Public Subnets  
  - 🔒 Private Subnets
- Conditional creation of:
  - Internet Gateway (only if public subnet exists)
  - Route Table & Associations
- Clean and structured outputs

---

## 🏗️ Project Structure


terraform_own_module/
│
├── module/
│ └── vpc/
│ ├── main.tf
│ ├── variables.tf
│ ├── outputs.tf
│ ├── versions.tf
│ └── README.md
│
├── root_main.tf
├── root_outputs.tf
└── .gitignore


---

## ⚙️ Prerequisites

- Terraform >= 1.0
- AWS CLI configured
- AWS account with required permissions

---

## 🚀 Usage

### 1. Initialize Terraform
```bash
terraform init
2. Plan the Infrastructure
terraform plan
3. Apply Configuration
terraform apply
🧾 Example Configuration
module "vpc" {
  source = "./module/vpc"

  vpc_config = {
    cidr_block = "10.0.0.0/16"
    name       = "my_test_vpc"
  }

  subnet_config = {
    public_subnet = {
      cidr_block = "10.0.0.0/24"
      az         = "ap-south-1a"
      public     = true
    }

    private_subnet = {
      cidr_block = "10.0.1.0/24"
      az         = "ap-south-1b"
    }
  }
}

📤 Outputs
Output Name	Description
vpc_id	ID of the created VPC
public_subnet_ids	Map of public subnet IDs with AZ
private_subnet_ids	Map of private subnet IDs with AZ
🔐 Best Practices
Terraform state files are ignored using .gitignore
Sensitive data is not committed to version control
Modular and reusable architecture
📚 Concepts Used
Terraform Modules
for_each and count
Conditional Resource Creation
Local Values (locals)
Input Validation (can, cidrnetmask)
Dynamic Mapping & Filtering

👨‍💻 Author
Rajesh Dangi

⭐ Acknowledgement
If you found this project useful, consider giving it a ⭐ on GitHub!