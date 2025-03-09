output "web_server_ip" {
  value = [for ip in digitalocean_droplet.web_server[*].ipv4_address : "ssh -i ${local_file.private_key.filename} root@${ip}"]
}

output "loadbalancer_ip" {
  value = "${digitalocean_loadbalancer.entrypoint.ip}"
}