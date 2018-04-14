# Digital Ocean Token value
variable "do_token" {}

# Configure Digital Ocean Provider
provider "digitalocean" {
  token = "${var.do_token}"
}
