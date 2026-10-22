resource "google_compute_instance" "public_vm" {
  name         = "${var.project_id}-public-instance"
  machine_type = var.instance_type
  zone         = "${var.region}-a"

  labels = {
    terraform = "true"
    project   = var.project_id
    owner     = var.owner
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
      size  = 10
    }
  }

  network_interface {
    subnetwork = data.terraform_remote_state.base_infra.outputs.public_subnet_id

    access_config {
    }
  }
}