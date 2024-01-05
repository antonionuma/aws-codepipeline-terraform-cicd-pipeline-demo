locals {
    aws_profile = "cloud-env"
    aws_region  = "us-east-1"
    prefix      = "hands-on-cloud-terraform-remote-state"
    ssm_prefix  = "/org/hands-on-cloud/terraform"
    common_tags = {
        Project         = "hands-on-cloud"
        ManagedBy       = "Terraform"
    }
}

