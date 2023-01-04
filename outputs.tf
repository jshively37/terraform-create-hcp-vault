output "hcp_vault_public_url" {
  value = var.hcp_vault_public_endpoint_bool == "true" ? resource.hcp_vault_cluster.hcp_cluster.vault_public_endpoint_url : null
}

output "hcp_vault_private_url" {
  value = resource.hcp_vault_cluster.hcp_cluster.vault_private_endpoint_url
}

output "hcp_vault_admin_token" {
  value = resource.hcp_vault_cluster_admin_token.admin_token.token
  sensitive = true
}
