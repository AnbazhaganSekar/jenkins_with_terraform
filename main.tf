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
#ec2 creation.tf

# Create 2 EC2 Instance
resource "aws_instance" "web" {
  ami           = "ami-079b5e5b3971bd10d" # Amazon Linux
  availability_zone = "ap-south-1a"
  instance_type = "t2.micro"
  count         = 2
  tags = {
    #"Name" = "web"
    "Name" = "web-${count.index}"
  }
}
