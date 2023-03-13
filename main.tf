
provider "hcp" {
  client_id     = var.hcp_client_id
  client_secret = var.hcp_client_secret
}


resource "hcp_hvn" "main" {
  hvn_id         = local.hvn_id
  cloud_provider = "aws"
  region         = local.hvn_region
  cidr_block     = "172.25.32.0/20"
}


output "hvn_id" {
  value = hcp_hvn.main.hvn_id  
}