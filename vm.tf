resource "google_compute_instance" "vm" {
  name = "louise-vm"
  machine_type = "e2-micro"
  zone = "europe-west1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet.id
    access_config {}
  }

}
