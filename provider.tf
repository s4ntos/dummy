terraform {
  backend "gcs" {
    bucket      = "jm-tfremotestate-ye63"
    prefix      = "aratiendas-com/tfstate"
    credentials = "./google-key-dns.json"
  }
}

provider "google" {
  credentials = file("./google-key-dns.json")
  project     = "jm-global-networking-eu"
  region      = "europe-west1"
}

provider "google-beta" {
  credentials = file("./google-key-dns.json")
  project     = "jm-global-networking-eu"
  region      = "europe-west1"
}