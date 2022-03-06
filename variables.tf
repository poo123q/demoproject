variable "platform_output" {
  description = "User provided inputs for myPlatform deployment"
  type = object({
    name             = string
    system_name      = string
    environment_type = string
    owner            = string
    tags             = map(string)
  })
}

variable "initialization_output" {
  description = "initialization_output ComponentAsset"
  type = object({
    resource_group_name        = string
    region                     = string
    vnet_id                    = string
    kv_public_openssh_key_name = string
    kv_private_ssh_key_name    = string
    private_subnets            = list(string)
    key_vault_id               = list(string)
    dns_private_zone_name      = string
  })
}

variable "source_address_prefixes" {
  description = "CIDR or source IP range"
  type        = list(string)
  default     = ["10.0.0.0/8", "172.0.0.0/8"]
}

variable "destination_address_prefixes" {
  description = "CIDR or destination IP range"
  type        = list(string)
  default     = ["10.0.0.0/8", "172.0.0.0/8"]
}

variable "firewall_start_ip" {
  description = "Specifies start ip"
  type        = string
  default     = "172.0.0.0"
}

variable "firewall_end_ip" {
  description = "Specifies end ip"
  type        = string
  default     = "172.255.255.255"
}

variable "server_version" {
  description = "Specifies the version of PostgreSQL to use. Valid values are 9.5, 9.6, and 10.0. Changing this forces a new resource to be created."
  type        = string
  default     = "10"
}

variable "account_tier" {
  type        = string
  description = "Type of storage account"
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  description = "Account Replication Type"
  default     = "GRS"
}

variable "sonarqube_password" {
  description = "Enter SonarQube password else a random password will be generated"
  type        = string
  default     = ""
}