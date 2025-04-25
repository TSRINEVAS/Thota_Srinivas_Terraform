variable "name" {
  description = "Name of the VM instance"
  type        = string
}

variable "machine_type" {
  description = "Machine type (e2-medium, etc.)"
  type        = string
}

variable "zone" {
  description = "Zone to deploy VM"
  type        = string
}

variable "boot_image" {
  description = "Boot disk image"
  type        = string
}

variable "network" {
  description = "Network name"
  type        = string
}

variable "subnetwork" {
  description = "Subnetwork name"
  type        = string
}

variable "startup_script" {
  description = "Startup script content"
  type        = string
  default     = "echo Hello World > /var/tmp/hello.txt"
}
