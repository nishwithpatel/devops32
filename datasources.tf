data "aws_vpc" "selected" {
  id = "vpc-0eac6d4d55868caa8"
}

data "aws_subnet" "s1" {
  id = "subnet-0d124b5eb12011584"
}

data "aws_subnet" "s2" {
  id = "subnet-027c6daa4133a59ff"
}

data "aws_subnet" "s3" {
  id = "subnet-0e595f62126dd8670"
}


resource "aws_instance" "web-new" {
  ami                         = var.imagename
  availability_zone           = "us-east-1a"
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = data.aws_subnet.s1.id
  vpc_security_group_ids      = ["sg-085d4934890d66305"]
  associate_public_ip_address = true
  tags = {
    Name       = "Imported-Server-1"
    Env        = var.environment
    Owner      = "Sree"
    CostCenter = "ABCD"
  }
  user_data = <<-EOF
		#!/bin/bash
        sudo apt-get update
		sudo apt-get install -y nginx
		sudo systemctl start nginx
		sudo systemctl enable nginx
		echo "<h1>Deployed via Terraform</h1>" | sudo tee /var/www/html/index.nginx-debian.html
	EOF
}