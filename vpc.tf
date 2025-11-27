resource "google_compute_network" "vpc" {
  name = "louise-vpc"
  delete_default_routes_on_create = false
  auto_create_subnetworks = false
  routing_mode = "REGIONAL"
}

# subnets
resource "google_compute_subnetwork" "subnet" {
  name = "louise-subnet"
  ip_cidr_range = "10.0.1.0/24"
  region = "europe-west1"
  network = google_compute_network.vpc.id
  private_ip_google_access = true

}
