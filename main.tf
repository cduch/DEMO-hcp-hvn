
provider "hcp" {
  client_id     = var.hcp_client_id
  client_secret = var.hcp_client_secret
}


resource "hcp_hvn" "main" {
  hvn_id         = var.hvn_id
  cloud_provider = "aws"
  region         = var.region
  cidr_block     = "172.25.32.0/20"
}


output "hvn_id" {
  value = hcp_hvn.main.hvn_id  
}