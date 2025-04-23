terraform {
	backend "gcs" {
    	bucket  = "thotaterra"
    	prefix  = "terraform/state"
}
