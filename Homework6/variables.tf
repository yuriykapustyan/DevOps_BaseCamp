variable "publicip" {
    description = "Require public ip"
    type = bool
    default = true   
}

variable "subnetname" {
    description = "Subnet name"
    type = string
    default = "sub-hw5-1"   
}

variable "secgroupname" {
    description = "Security group name"
    type = string
    default = "sg-hw5-1"   
}

variable "itype" {
    description = "Instance type"
    type = string
    default = "t2.micro"    
}

variable "ami" {
    description = "AMI id"
    type = string
    default = "ami-0b5eea76982371e91"   
}

variable "region" {
    description = "Region"
    type = string
    default = "us-east-1"   
}