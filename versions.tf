terraform {
  backend "gcs" {
    bucket = "my-bucket-tfstate"
    prefix = ""
  }
  required_version = ">= 0.12.6"
  required_providers {
    google = ">= 3.5"
  }
}
