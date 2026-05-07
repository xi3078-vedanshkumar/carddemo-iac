locals {
  project_id = "f7380644-d02d-4388-93da-6b30027f475a"

  tags = {
    ManagedBy   = "ace"
    Environment = var.environment
    Project     = local.project_id
  }
}

data "aws_availability_zones" "available" {
  state = "available"
}

locals {
  # EKS requires at least 2 subnets (recommended across 2 AZs)
  azs = slice(data