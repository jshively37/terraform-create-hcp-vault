resource "hcp_hvn" "hvn" {
  hvn_id         = var.hvn_id
  cidr_block     = var.hvn_cidr_block
  cloud_provider = var.hcp_cloud_provider
  region         = var.hcp_region
}

resource "hcp_vault_cluster" "hcp_cluster" {
  hvn_id          = hcp_hvn.hvn.hvn_id
  cluster_id      = var.hcp_vault_cluster_id
  tier            = var.hcp_vault_tier
  public_endpoint = var.hcp_vault_public_endpoint_bool
}

resource "hcp_vault_cluster_admin_token" "admin_token" {
  cluster_id = var.hcp_vault_cluster_id
}
