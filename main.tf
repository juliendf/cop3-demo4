provider "aws" {
  region = "eu-west-3"
}

terraform {
  backend "s3" {
    bucket = "copcloud-meeting3"
    key    = "demo4/terraform.tfstate"
    region = "eu-west-3"
  }
}

/**
data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  tags = {
    Name = "demo4"
  }
}
*/