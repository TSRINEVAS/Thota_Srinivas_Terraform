output "bucket_name" {
  description = "The name of the created GCS bucket"
  value       = google_storage_bucket.srinivas_bucket.name
}

output "bucket_url" {
  description = "The URL to access the GCS bucket"
  value       = "gs://${google_storage_bucket.srinivas_bucket.name}"
}

output "bucket_location" {
  description = "Location of the bucket"
  value       = google_storage_bucket.srinivas_bucket.location
}

output "bucket_self_link" {
  description = "Self link of the bucket"
  value       = google_storage_bucket.srinivas_bucket.self_link
}
