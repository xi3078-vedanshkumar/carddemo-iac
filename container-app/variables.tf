variable "region" {
  description = "AWS region to deploy EKS"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment tag"
  type        = string
  default     = "dev"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "carddemo-eks-dev"
}

variable "kubernetes_version" {
  description = "Kubernetes version for EKS (e.g., 1.30). Leave null to use latest supported by AWS."
  type        = string
  default     = null
}

variable "vpc_cidr" {
  description = "CIDR for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "instance_types" {
  description = "Instance types for default managed node group"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "disk_size" {
  description = "Node group disk size (GiB)"
  type        = number
  default     = 20
}

variable "min_size" {
  description = "Node group minimum size"
  type        = number
  default     = 1
}

variable "desired_size" {
  description = "Node group desired size"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "Node group maximum size"
  type        = number
  default     = 3
}

variable "endpoint_public_access" {
  description = "Enable public EKS API endpoint"
  type        = bool
  default     = true
}

variable "endpoint_public_access_cidrs" {
  description = "Allowed CIDRs for public EKS API endpoint"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "enable_vpc_flow_logs" {
  description = "Enable VPC Flow Logs to CloudWatch"
  type        = bool
  default     = true
}

variable "flow_logs_retention_days" {
  description = "CloudWatch Log retention in days for EKS/VPC logs"
  type        = number
  default     = 90
}