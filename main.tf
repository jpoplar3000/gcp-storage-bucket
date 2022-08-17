
provider "google" {

  project = var.project_id
  region  = var.region
  zone    = var.zone
  #version = "~> 3.86.0"
}

resource "google_storage_bucket" "auto-expire" {
  name          = "20220817001-sample-bucket"
  location      = "US"
  force_destroy = true
  labels        = {
    name = "alpha"
  }

  }
}