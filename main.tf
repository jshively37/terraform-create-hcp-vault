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

resource "vault_auth_backend" "userpass" {
  type = "userpass"
}

resource "vault_policy" "demo_policy" {
  name   = "demo_policy"
  policy = <<EOT
  path "*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}
EOT

}

resource "vault_generic_endpoint" "user" {
  depends_on           = [vault_auth_backend.userpass]
  path                 = "auth/userpass/users/${var.username}"
  ignore_absent_fields = true

  data_json = <<EOT
  {
    "policies": ["demo_policy"],
    "password": "${var.password}"
  }
  EOT
}

