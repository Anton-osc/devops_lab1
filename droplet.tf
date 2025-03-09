resource "digitalocean_droplet" "web_server" {
  count    = 2
  image    = "ubuntu-22-04-x64"
  name     = "web-${count.index}"
  region   = "nyc2"
  size     = "s-1vcpu-1gb"
  ssh_keys = [digitalocean_ssh_key.web_key.id]
}