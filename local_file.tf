resource "local_file" "public_key_openssh" {
  content  = tls_private_key.this.public_key_openssh
  filename = "public_key_openssh"
}

resource "local_file" "private_key_pem" {
  content  = tls_private_key.this.private_key_pem
  filename = "private_key.pem"
}

resource "local_file" "public_key_pem" {
  content  = tls_private_key.this.public_key_pem
  filename = "public_key.pem"
}

resource "local_file" "public_key_fingerprint_md5" {
  content  = tls_private_key.this.public_key_fingerprint_md5
  filename = "public_key_fingerprint.md5"
}

