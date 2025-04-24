variable "project_id" {
  default = "vaulted-epigram-457004-c6"
}

variable "region" {
  default = "us-central1"
}
variable "gcp_zone" {
    type = string
    description = "The primary GCP zone within the region to be used"
    default = "us-west1-a"
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "my-custom-vpc"
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "my-subnet"
}

variable "subnet_cidr" {
  description = "CIDR range for the subnet"
  type        = string
  default     = "10.0.0.0/24"
}

