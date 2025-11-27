
provider "google" {
  project     = "playground-s-11-ac1f93ca"
  region      = "europe-west1"
  zone        = "europe-west1-b"
  credentials = file("credentials.json")
}
