resource "tls_private_key" "web_key" {
  algorithm = "RSA"
  rsa_bits = 4096
}

resource "local_file" "private_key" {
  content = tls_private_key.web_key.private_key_openssh
  filename = ".ssh/web_key"
  file_permission = "0400"
}

resource "digitalocean_ssh_key" "web_key" {
  name = "Web Server key"
  public_key = tls_private_key.web_key.public_key_openssh
}