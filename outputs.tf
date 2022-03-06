output "sonarqube_output" {
  description = "Sonar output component asset for external consumption"
  value = {
    virtual_machine_id = azurerm_linux_virtual_machine.sonar.id
    private_ip         = azurerm_network_interface.sonar.private_ip_address
    azurerm_lb_id      = azurerm_lb.sonar.id
    host               = azurerm_lb.sonar.frontend_ip_configuration
    username           = local.username
    sonarqube_password = local.sonarqube_password
    kv_password_name   = azurerm_key_vault_secret.password.name
    sonarqube_url      = format("http://%s", trim(azurerm_private_dns_a_record.sonar.fqdn, "."))
  }
}

output "mpp_report" {
  description = "This is the string key-value map containing properties presented to the user for consuming this component."
  value = {

    "SonarQube URL"              = format("http://%s", trim(azurerm_private_dns_a_record.sonar.fqdn, "."))
    "SonarQube Username"         = local.username
    "KV SonarQube Password Name" = azurerm_key_vault_secret.password.name
    "SonarQube Password"         = local.mpp_sonarqube_password
  }
}