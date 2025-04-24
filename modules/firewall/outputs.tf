variable "name" {
  description = "Name of the firewall rule"
  type        = string
}

variable "network" {
  description = "VPC network self_link"
  type        = string
}

variable "source_ranges" {
  description = "Allowed source IP ranges"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "target_tags" {
  description = "Target tags to apply the rule to"
  type        = list(string)
  default     = []
}