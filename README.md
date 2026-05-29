Standard Operating Procedure (SOP)
Title
Azure Security Baseline Initiative Deployment using Terraform and Azure DevOps
Purpose
To deploy and maintain Azure Security Baseline policies across Azure subscriptions using Infrastructure as Code (Terraform) and Azure DevOps CI/CD pipelines.
________________________________________
Scope
This SOP covers:
•	Azure Policy Initiative creation
•	Azure Policy Assignment
•	Policy Group Management
•	Azure DevOps Pipeline Deployment
•	Terraform State Management
•	Managed Identity Configuration
•	Policy Compliance Monitoring
________________________________________
Prerequisites
Azure Permissions
Service Principal must have:
•	Policy Contributor
•	Resource Policy Contributor
•	Contributor (recommended)
Scope:
•	Management Group or Subscription
________________________________________
Azure DevOps Requirements
•	Azure Repos
•	Azure Pipelines
•	Service Connection
•	Self-hosted or Microsoft-hosted Agent
________________________________________
Terraform Requirements
Version:
•	Terraform >= 1.5
Provider:
•	azurerm >= 4.x
________________________________________
Repository Structure
azure-policy-group-definition/

├── main.tf
├── variables.tf
├── terraform.tfvars
├── initiative.tf
├── assignment.tf

├── vm-policies.tf
├── storage-policies.tf
├── keyvault-policies.tf
├── appservice-policies.tf
├── functionapp-policies.tf
├── sql-policies.tf
├── aks-policies.tf
├── databricks-policies.tf
├── cognitive-policies.tf
├── search-policies.tf
├── aml-policies.tf
├── mysql-policies.tf
├── postgres-policies.tf
├── mariadb-policies.tf
├── redis-policies.tf
├── waf-policies.tf

└── azure_policy_pipeline.yaml
________________________________________
Security Baseline Groups
Virtual Machine
Policies:
•	Management ports should be closed
•	Azure Backup enabled
•	Vulnerability Assessment
•	NSG protection
•	Encryption at host
•	Update assessment
•	Network traffic agents
Total: 10
________________________________________
Storage Account
Policies:
•	Restrict network access
•	Disable public access
•	Disable shared key access
•	TLS enforcement
•	Secure transfer
Total: 5
________________________________________
Key Vault
Policies:
•	Secret expiry
•	Key expiry
•	Rotation policy
•	Defender enabled
•	Firewall enabled
•	Soft delete
•	Deletion protection
Total: 7
________________________________________
App Service
Policies:
•	HTTPS only
•	Client Certificates
•	Managed Identity
•	Latest TLS
•	FTPS Only
•	Disable CORS *
•	Disable Remote Debugging
Total: 7
________________________________________
Function App
Policies:
•	HTTPS only
•	Managed Identity
•	Latest TLS
•	FTPS Only
•	Client Certificates
•	Disable CORS *
•	Disable Remote Debugging
Total: 7
________________________________________
SQL Server
Policies:
•	SQL Vulnerability Assessment
•	Entra ID Admin
•	Transparent Data Encryption
•	Defender for SQL
Total: 4
________________________________________
AKS
Policies:
•	Local Auth Disabled
•	Allowed Images
•	Allowed AppArmor Profiles
•	Defender Profile
•	Azure Policy Add-on
•	Container Vulnerability Assessment
Total: 6
________________________________________
Databricks
Policies:
•	Disable Public IP
•	Disable Public Network Access
•	VNET Injection
•	Enable Resource Logs
Total: 4
________________________________________
Cognitive Services
Policies:
•	Managed Identity
•	Disable Public Access
Total: 2
________________________________________
Azure AI Search
Policies:
•	Disable Local Authentication
Total: 1
________________________________________
Azure Machine Learning
Policies:
•	Disable Public Access
•	Enable Resource Logs
Total: 2
________________________________________
MySQL Flexible
Policies:
•	Entra Authentication
•	Disable Public Access
•	Defender Enabled
Total: 3
________________________________________
PostgreSQL Flexible
Policies:
•	Entra Authentication
•	SSL Enforcement
Total: 2
________________________________________
MariaDB
Policies:
•	Disable Public Access
•	Private Endpoint
•	Geo-redundant Backup
Total: 3
________________________________________
Redis
Policies:
•	Private Link Required
Total: 1
________________________________________
WAF
Policies:
•	WAF Enabled on Application Gateway
Total: 1
________________________________________
Deployment Procedure
Step 1 – Validate Terraform
terraform init
terraform validate
terraform plan
________________________________________
Step 2 – Deploy Initiative
terraform apply
________________________________________
Step 3 – Verify Initiative
Azure Portal:
Policy
→ Definitions
→ Azure Security Baseline
Verify:
•	Policy Count
•	Group Count
•	Policy Parameters
________________________________________
Step 4 – Assign Initiative
Terraform Assignment:
identity {
  type = "SystemAssigned"
}
Mandatory when initiative contains:
•	Modify
•	DeployIfNotExists
•	AuditIfNotExists
________________________________________
Step 5 – Verify Assignment
Azure Portal:
Policy
→ Assignments
→ Azure Security Baseline
Verify:
•	Assignment Status
•	Managed Identity
•	Compliance State
________________________________________
Azure DevOps Pipeline
Pipeline Stages:
1.	Terraform Init
2.	Terraform Validate
3.	Terraform Plan
4.	Manual Approval (Optional)
5.	Terraform Apply
________________________________________
Common Issues
MissingPolicyParameter
Example:
maximumDaysToRotate
allowedContainerImagesRegex
Resolution:
Add required parameter_values block.
________________________________________
AuthorizationFailed
policySetDefinitions/write
Resolution:
Grant:
•	Policy Contributor
•	Resource Policy Contributor
________________________________________
DeployIfNotExists Error
all existing assignments must have identity
Resolution:
Use:
identity {
  type = "SystemAssigned"
}
Delete and recreate assignment if required.
________________________________________
Rollback Procedure
terraform destroy
OR
Remove policy group from initiative and run:
terraform apply
________________________________________
Monitoring
Azure Portal:
Policy
→ Compliance
Monitor:
•	Non-compliant Resources
•	Remediation Tasks
•	Exemptions
•	Policy Assignment Health
________________________________________
Version Control
Repository: Azure Repos
Branch Strategy:
•	main
•	dev
•	feature/*
