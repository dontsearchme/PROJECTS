# PROJECT 1
AWS Infrastructure Provisioning with Terraform

## What this project does
Provisions AWS environment using Terraform 
as Infrastructure as Code (IaC) — no manual console 
clicks, everything defined as code.

## Resources Created
- EC2 Instance (Amazon Linux 2, t2.micro — free tier)
- S3 Bucket for object storage
- IAM User with programmatic access
- IAM Group with AmazonEC2FullAccess policy
- IAM User assigned to IAM Group

## Tools Used
- Terraform v5.0
- AWS (EC2, S3, IAM)
- VS Code
- Git & GitHub

## Project Structure
```
PROJECTS/
├── main.tf         # All AWS resources defined here
├── variables.tf    # Configurable values
├── outputs.tf      # Values printed after apply
└── README.md       # Project documentation
```

## How to Deploy
1. Clone this repo
```bash
git clone https://github.com/dontsearchme/PROJECTS.git
cd PROJECTS
```
2. Configure AWS credentials
```bash
aws configure
```
3. Initialise Terraform
```bash
terraform init
```
4. Preview what will be created
```bash
terraform plan
```
5. Deploy to AWS
```bash
terraform apply
```
6. When done — destroy to avoid charges
```bash
terraform destroy
```

## What I learned
- Writing Terraform configuration files from scratch
- Provisioning AWS infrastructure as code
- Managing IAM users, groups and policies via Terraform
- Version controlling infrastructure code with Git and GitHub

## Author
Yuvaraj V — Aspirant Cloud/DevOps Engineer  
[GitHub](https://github.com/dontsearchme)
