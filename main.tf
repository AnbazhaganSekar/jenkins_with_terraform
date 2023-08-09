#provider.tf

provider "aws"{
region = "ap-south-1"
access_key = "AKIA2OPA7DHITUV2O2GS"
secret_key = "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"
}
 #vpc.tf

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "VPC-demo"
    Purpose = "terrafrom using Jenkins"
  }
}
