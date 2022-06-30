terraform {
cloud {
organization = "Mastoura"
workspaces {
name = "ec2Instance"
}
}
required_providers {
aws = {
source = "hashicorp/aws"
version = "4.18.0"
}
}
}
# Define AWS as a provider
provider "aws" {
shared_credentials_files = [ ".aws/credentials" ]
region = var.aws_region
}