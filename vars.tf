# Digital Ocean Token value
variable "do_token" {
  default = ""
}

# SSH key which should be used for node access
variable "ssh_keys" {
  type    = "list"
  default = []
}

variable "droplet_size" {
  default = 20
}

variable "droplet_region" {
  default = "ams1"
}

variable "droplet_image" {
  default = "ubuntu-16-04-x64"
}
