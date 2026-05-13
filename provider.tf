provider "aws" {
  region = var.region
}
data "aws_ami" "ubuntu" {
  most_recent = true
 
  owners = ["099720109477"]
 
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }
} 
terraform {
  backend "s3" {
    bucket         = "vaibhav-terraform-state-2026"
    key            = "terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "terraform-lock"
  }
}
