# SSH key which should be used for node access
variable "ssh_keys" {
  type = "list"
}

# etcd discovery token
variable "discovery_token" {}

variable "droplet_size" {}

variable "droplet_region" {}

variable "droplet_image" {
  default = "ubuntu-16-04-x64"
}

# Generate template file containing cloud-config
data "template_file" "cloud_config" {
  template = "${file("${path.module}/userdata/cloud-config-ssl.tpl")}"

  vars {
    discovery_token = "${var.discovery_token}"
  }
}

# Create 3 machine cluster
resource "digitalocean_droplet" "coreos-1" {
  image              = "coreos-stable"
  name               = "${var.droplet_image}"
  region             = "${var.droplet_region}"
  size               = "${var.droplet_size}"
  private_networking = true
  user_data          = "${data.template_file.cloud_config.rendered}"
  ssh_keys           = "${var.ssh_keys}"
}
