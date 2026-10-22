data "terraform_remote_state" "base_infra" {
  backend = "gcs"

  config = {
    bucket = var.state_bucket
    prefix = var.state_key
  }
}