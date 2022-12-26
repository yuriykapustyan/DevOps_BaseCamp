provider "aws" {
  region = var.region
}

resource "aws_security_group" "sg-hw5-1" {
  name = lookup(var.awsprops, "secgroupname")
  description = lookup(var.awsprops, "secgroupname")
  vpc_id = lookup(var.awsprops, "vpc")

  // To Allow SSH Transport
  ingress {
    from_port = 22
    protocol = "tcp"
    to_port = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  // To Allow Port 80 Transport
  ingress {
    from_port = 80
    protocol = ""
    to_port = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_instance" "ins-hw5-1" {
  ami = var.ami
  instance_type = var.itype
  subnet_id = var.subnetname
  associate_public_ip_address = var.publicip
  #key_name = lookup(var.awsprops, "keyname")

  vpc_security_group_ids = [
    aws_security_group.sg-hw5-1.id
  ]

  depends_on = [ aws_security_group.sg-hw5-1 ]
}