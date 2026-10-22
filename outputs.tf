output "instance_name" {
  description = "Name of the created VM instance"
  value       = google_compute_instance.public_vm.name
}

output "instance_external_ip" {
  description = "External IP address of the VM"
  value       = google_compute_instance.public_vm.network_interface[0].access_config[0].nat_ip
}

output "instance_subnet" {
  description = "Public subnet ID from remote state"
  value       = data.terraform_remote_state.base_infra.outputs.public_subnet_id
}