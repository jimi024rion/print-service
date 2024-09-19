resource "google_storage_bucket" "print_data" {
  name                        = "printservice-dev-printdata"
  location                    = "ASIA1"
  storage_class               = "STANDARD"
  force_destroy               = true
  uniform_bucket_level_access = true
}
