resource "digitalocean_loadbalancer" "entrypoint" {
  name   = "loadbalancer-1"
  region = "nyc2"

  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = 3000
    target_protocol = "http"
  }

  healthcheck {
    port     = 22
    protocol = "tcp"
  }

  droplet_ids = [for id in digitalocean_droplet.web_server[*].id : id]
}