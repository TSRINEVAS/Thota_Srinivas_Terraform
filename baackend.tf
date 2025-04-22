terraform {
	backend "gcs" {
    	bucket  = "YOUR-BACKEND-BUCKET"
    	prefix  = "terraform/state"
        credentials = "PATH/TO/CREDENTIALS/FILE.JSON"
	}
}