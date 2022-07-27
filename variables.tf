variable "hcp_vault_create_token" {
  description = "Create an admin token and display it in the state file"
  default     = "false"
}

variable "hvn_id" {
  description = "The ID of the HCP HVN."
  type        = string
}

variable "hcp_vault_cluster_id" {
  description = "The ID of the HCP Vault cluster."
  type        = string
}

variable "hvn_cidr_block" {
  type        = string
  description = "CIDR Block for HVN i.e. 192.168.2.0/24"
}

variable "hcp_region" {
  description = "The hcp_region of the HCP HVN and Vault cluster."
  type        = string
}

variable "hcp_cloud_provider" {
  description = "The cloud provider of the HCP HVN and Vault cluster."
  type        = string
}

variable "hcp_vault_tier" {
  description = "hcp_vault_tier of the HCP Vault cluster. Valid options for hcp_vault_tiers."
  type        = string
}

variable "hcp_vault_public_endpoint_bool" {
  description = "Boolean to enable/disable public endpoint."
}

variable "username" {
  type        = string
  description = "Username to be created in userpass"
}

variable "password" {
  type        = string
  description = "Password to be created for the user in userpass"
}
