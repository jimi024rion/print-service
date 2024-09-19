terraform {
  required_version = "1.9.5"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.3.0"
    }
  }
  #   backend "gcs" {
  #     bucket = "print-service-dev-state"
  #     prefix = "terraform"
  #   }
}

provider "google" {
  project = "687770940639"
  region  = "asia-northeast1"
  zone    = "asia-northeast1-c"
}

