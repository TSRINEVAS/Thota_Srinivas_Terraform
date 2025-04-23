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
