# Cloud Migration PoC

This repository demonstrates a cloud migration automation scenario focusing on provisioning infrastructure on AWS using **Terraform** and configuring web servers using **Ansible**.

## 🛠 Tech Stack
- AWS (VPC, EC2, ALB, ASG, IAM)
- Terraform (Infrastructure as Code)
- Ansible (Configuration Management)
- Apache Web Server (on EC2 instances)

## 📁 Project Structure

```
cloud_migration_poc/
├── terraform/
│   ├── main.tf             # Terraform infrastructure definition
│   └── userdata.sh         # Bootstrap script for EC2
├── ansible/
│   └── playbook.yml        # Ansible playbook to configure Apache port
```

## ✅ Features

- Create VPC, subnet, internet gateway, and routing
- Launch EC2 web server in an auto-scaling group
- Set up an ALB (Application Load Balancer) to route traffic
- Change Apache default port from 80 to 8080
- Open port 80 to public
- Create IAM user with EC2 reboot permission

## 🚀 How to Use

### 1. Terraform Setup

```bash
cd terraform
terraform init
terraform apply -auto-approve
```

> This will provision the complete environment including VPC, EC2, ALB, ASG, and IAM.

### 2. Ansible Setup

Ensure your EC2 instance is accessible via SSH and listed in your `inventory` file.

```bash
cd ansible
ansible-playbook -i inventory playbook.yml
```

> This will reconfigure the Apache web server to run on port 8080.

## 🔐 Security Considerations
- IAM user created only has permission to reboot EC2 instances
- HTTP traffic is only allowed on port 80
- Further security hardening should include HTTPS setup, WAF, and KMS encryption for sensitive data

## 📄 License
NA
