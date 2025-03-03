output "web_server_ip" {
  value = digitalocean_droplet.web_server.ipv4_address
}