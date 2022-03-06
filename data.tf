data "template_file" "sonar" {
  template = file("${path.module}/templates/scripts.tpl")
}

data "azurerm_key_vault_secret" "opensshkey" {
  name         = var.initialization_output.kv_public_openssh_key_name
  key_vault_id = var.initialization_output.key_vault_id[0]
}

data "azurerm_key_vault_secret" "privatesshkey" {
  name         = var.initialization_output.kv_private_ssh_key_name
  key_vault_id = var.initialization_output.key_vault_id[0]
}

data "azurerm_private_dns_zone" "private" {
  name = var.initialization_output.dns_private_zone_name
}