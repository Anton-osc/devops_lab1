resource "local_file" "ansible_hosts" {
  content = join("\n", [for ip in digitalocean_droplet.web_server[*].ipv4_address : "${ip}"])
  filename = "ansible/hosts.txt"
}