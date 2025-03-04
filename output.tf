output "web_server_ip" {
  value = "ssh -i ${local_file.private_key.filename} root@${digitalocean_droplet.web_server.ipv4_address}"
}