variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "Grafana"
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}

variable "user_data" {
  description = "Source user_data"
  default     = "user_data/install_grafana.sh"
}

variable "team_name" {
  description = "Team name"
  type        = string
  default     = "DevOps"
}

variable "public_key" {
  description = "Source public key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "key_name" {
  description = "Key name"
  type        = string
  default     = "id_rsa"
}