# Create a single Compute Engine instance
resource "google_compute_instance" "vm" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone
  tags         = ["http-server"]
  labels       = var.labels

  boot_disk {
    initialize_params {
      image = "debian-10-buster-v20221206"
      size = 10
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  #Install webserver
  metadata_startup_script = "sudo apt update; sudo apt install -y nginx; sudo echo 'Welcome to GCP Instance, Yuriy Kapustyan' > /var/www/html/index.html; sudo systemctl enable nginx; sudo systemctl restart nginx;"
  }
