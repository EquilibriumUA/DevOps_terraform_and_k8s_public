//Common vars
variable "aws_region" {
  description = "AWS region where the infrastructure will be deployed."
  type        = string
  default     = "eu-central-1"
}

variable "project_name" {
  description = "Name used to identify project resources."
  type        = string
  default     = "Terraform-Kubernetes-Project"
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "dev"
}
//VPC vars
variable "vpc_cidr" {
  description = "CIDR block for the project VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets."
  type        = list(string)

  default = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets."
  type        = list(string)

  default = [
    "10.0.11.0/24",
    "10.0.12.0/24"
  ]
}
//EKS vars
variable "eks_version" {
  description = "Kubernetes version for the EKS cluster."
  type        = string
  default     = "1.34"
}