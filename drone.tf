# Create drone machine
resource "digitalocean_droplet" "coreos-1" {
  image              = "coreos-stable"
  name               = "${var.droplet_image}"
  region             = "${var.droplet_region}"
  size               = "${var.droplet_size}"
  private_networking = true
  ssh_keys           = "${var.ssh_keys}"
}
