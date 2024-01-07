terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  profile = local.aws_profile
  region = local.aws_region
 
}

provider "aws" {
  profile = local.aws_profile
  region = us-west-1
  alias = "west"
}
