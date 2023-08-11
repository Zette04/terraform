terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
    region = "ap-southeast-1"
}

resource "aws_instance" "ansible_host" {
   
    ami = "ami-091a58610910a87a9"
    instance_type = "t2.micro"
    key_name = "mary-acer"
    vpc_security_group_ids = ["sg-07567653c601246cd"]
    subnet_id = "subnet-1dc78154"

    root_block_device {
        volume_size = "20"
        volume_type = "standard"
        encrypted = "true"
        }
    
    tags = {
        Name = "ansible_instance"
          }
    
}

resource "aws_instance" "test_host" {
   
    ami = "ami-091a58610910a87a9"
    instance_type = "t2.micro"
    key_name = "mary-acer"
    vpc_security_group_ids = ["sg-07567653c601246cd"]
    subnet_id = "subnet-1dc78154"

    root_block_device {
        volume_size = "20"
        volume_type = "standard"
        encrypted = "true"
    }

    tags = {
        Name = "test_instance"
          }
    
}

