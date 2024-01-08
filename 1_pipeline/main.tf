terraform {
  backend "s3" {
    #bucket = "hands-on-cloud-terraform-remote-state-s3"
    bucket = "hands-on-cloud-terraform-remote-state"
    key = "hands-on-cloud-terraform-demo-pipeline.tfstate"
    region = "us-east-1"
    encrypt = "true"
    shared_credentials_file = "~/.aws/credentials"
    profile = "cloud-env"
    dynamodb_table = "hands-on-cloud-terraform-remote-state-dynamodb"
  }
}

locals {
  aws_profile = "cloud-env"
  aws_region  = "us-east-1"
  prefix      = "${var.repository_name}-${var.listen_branch_name}-pipeline"
  ssm_prefix  = "/org/hands-on-cloud/terraform"
  common_tags = {
    Project         = local.prefix
    ManagedBy       = "Terraform"
  }
}

