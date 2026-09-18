# Terraform DevSecOps AWS Infrastructure

A production-style Infrastructure as Code project that uses Terraform, AWS S3, Checkov, and GitHub Actions to validate and security-scan infrastructure before deployment.

## Architecture

Developer
    |
    v
GitHub Repository
    |
    v
GitHub Actions
    |
    +--> Terraform Format
    |
    +--> Terraform Init
    |
    +--> Terraform Validate
    |
    +--> Checkov Security Scan
    |
    +--> Terraform Plan
    |
    v
AWS
    |
    v
S3 Bucket


## Technologies

- Terraform
- AWS
- Amazon S3
- GitHub Actions
- Checkov
- Infrastructure as Code
- DevSecOps
- CI/CD


## Project Features

- Infrastructure managed using Terraform
- Secure private S3 bucket
- S3 bucket versioning enabled
- S3 public access blocked
- Terraform formatting validation
- Terraform configuration validation
- Infrastructure security scanning with Checkov
- Automated CI/CD pipeline using GitHub Actions
- Terraform plan generated automatically
- Security checks run before infrastructure deployment


## Project Structure

```text
terraform-devsecops/
│
├── main.tf
├── variables.tf
├── outputs.tf
├── versions.tf
├── .gitignore
├── README.md
│
└── .github/
    └── workflows/
        └── terraform.yml