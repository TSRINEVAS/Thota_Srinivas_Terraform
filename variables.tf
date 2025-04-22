variable "project_id" {
    type = string
    description = "The project ID that I will be working with"
    default = "project_id" # USE THE SAME PROJECT ID THAT YOU ALREADY USED IN PROVIDER.TF INITIALLY
}

variable "credentials_file" {
    type = string
    description = "The JSON credential file to be used within the provider.tf file"
    default = "PATH/TO/CREDENTIALS/FILE.JSON" # USE THE SAME VALUE THAT YOU USED BETWEEN THE PARENTHESES IN LINE 3 OF PROVIDER.TF FILE
}

variable "gcp_region" {
    type = string
    description = "The primary GCP region to deploy the resources"
    default = "us-west1"
}

variable "gcp_zone" {
    type = string
    description = "The primary GCP zone within the region to be used"
    default = "us-west1-a"
}

variable "vm_name" {
    type = string
    description = "The VM name to be used in GCP"
    default = "flask-app-1"
}

variable "vm_type" {
    type = string
    description = "The VM machine_type for vCPU and memory"
    default = "f1-micro"
}

variable "vm_image" {
    type = string
    description = "The image name for the OS of the VM"
    default = "debian-cloud/debian-11"
}

variable "vm_startup_script" {
    type = string
    description = "The text of the startup script command that we need to run in the VM when it boots up"
    default = "sudo apt-get update; sudo apt-get install -yq build-essential python3-pip rsync; pip install flask"
}

variable "subnet_ip_range" {
    type = string
    description = "The IPv4 CIDR range to be used in the VPC that will be created"
    default = "10.0.1.0/24"
}

variable "vpc_auto_create_subnets" {
    type = bool
    description = "Defines the behavior for the VPC whether we want to use it in auto mode (true) or a custom VPC (false)"
    default = false
}

variable "vpc_mtu" {
    type = number
    description = "The value of the MTU for our new VPC"
    default = 1460
}