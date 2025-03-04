resource "local_file" "ansible_hosts" {
  content = "${digitalocean_droplet.web_server.ipv4_address}"
  filename = "ansible/hosts.txt"
}