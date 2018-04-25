# Create drone machine
resource "digitalocean_droplet" "drone" {
  image              = "${var.droplet_image}"
  name               = "drone"
  region             = "${var.droplet_region}"
  size               = "${var.droplet_size}"
  private_networking = true
  ssh_keys           = "${var.ssh_keys}"
}
