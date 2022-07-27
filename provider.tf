terraform {
  required_providers {
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.37.0"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "3.8.0"
    }
  }
}

provider "hcp" {
  # Configuration options
}

provider "vault" {
  address = resource.hcp_vault_cluster.hcp_cluster.vault_public_endpoint_url
  token   = resource.hcp_vault_cluster_admin_token.admin_token.token
}
