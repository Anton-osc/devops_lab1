resource "digitalocean_droplet" "web_server" {
  image  = "ubuntu-22-04-x64"
  name   = "web-1"
  region = "nyc2"
  size   = "s-1vcpu-1gb"
  ssh_keys = [digitalocean_ssh_key.web_key.id]
}