variable "project_id" {
  description = "Google Cloud Platform (GCP) Project ID."
  type        = string
}

variable "region" {
  description = "GCP region name."
  type        = string
  default     = "us-central1-a" 
}

variable "zone" {
  description = "GCP zone name."
  type        = string
  default     = "us-central1-a"
}

variable "name" {
  description = "Web server name."
  type        = string
  default     = "lamp-tutorial"
}

variable "machine_type" {
  description = "GCP VM instance machine type."
  type        = string
  default     = "e2-micro"
}

variable "labels" {
  description = "List of labels to attach to the VM instance."
  type        = map
}
