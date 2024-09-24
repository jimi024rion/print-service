resource "google_storage_bucket" "main" {
  name          = "print-service-024_static_website_bucket"
  location      = "asia-northeast1"
  storage_class = "STANDARD"
  website {
    main_page_suffix = "index.html"
  }
}

resource "google_storage_bucket_object" "main" {
  name         = "index.html"
  content      = "<html><body>Hello World!</body></html>"
  content_type = "text/html"
  bucket       = google_storage_bucket.main.id
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">=5.33.0"
    }
  }
  required_version = "1.8.5"
}
