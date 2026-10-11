output "networks_id" {
  description = "Map of id values across all networks, keyed the same as var.networks except keys with no id are omitted"
  value       = { for k, v in confluent_network.networks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "networks_aws" {
  description = "Map of aws values across all networks, keyed the same as var.networks except keys with no aws are omitted"
  value       = { for k, v in confluent_network.networks : k => v.aws if v.aws != null && length(v.aws) > 0 }
}
output "networks_azure" {
  description = "Map of azure values across all networks, keyed the same as var.networks except keys with no azure are omitted"
  value       = { for k, v in confluent_network.networks : k => v.azure if v.azure != null && length(v.azure) > 0 }
}
output "networks_cidr" {
  description = "Map of cidr values across all networks, keyed the same as var.networks except keys with no cidr are omitted"
  value       = { for k, v in confluent_network.networks : k => v.cidr if v.cidr != null && length(v.cidr) > 0 }
}
output "networks_cloud" {
  description = "Map of cloud values across all networks, keyed the same as var.networks except keys with no cloud are omitted"
  value       = { for k, v in confluent_network.networks : k => v.cloud if v.cloud != null && length(v.cloud) > 0 }
}
output "networks_connection_types" {
  description = "Map of connection_types values across all networks, keyed the same as var.networks except keys with no connection_types are omitted"
  value       = { for k, v in confluent_network.networks : k => v.connection_types if v.connection_types != null && length(v.connection_types) > 0 }
}
output "networks_display_name" {
  description = "Map of display_name values across all networks, keyed the same as var.networks except keys with no display_name are omitted"
  value       = { for k, v in confluent_network.networks : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "networks_dns_config" {
  description = "Map of dns_config values across all networks, keyed the same as var.networks except keys with no dns_config are omitted"
  value       = { for k, v in confluent_network.networks : k => one(v.dns_config) if v.dns_config != null && length(v.dns_config) > 0 }
}
output "networks_dns_domain" {
  description = "Map of dns_domain values across all networks, keyed the same as var.networks except keys with no dns_domain are omitted"
  value       = { for k, v in confluent_network.networks : k => v.dns_domain if v.dns_domain != null && length(v.dns_domain) > 0 }
}
output "networks_endpoint_suffix" {
  description = "Map of endpoint_suffix values across all networks, keyed the same as var.networks except keys with no endpoint_suffix are omitted"
  value       = { for k, v in confluent_network.networks : k => v.endpoint_suffix if v.endpoint_suffix != null && length(v.endpoint_suffix) > 0 }
}
output "networks_environment" {
  description = "Map of environment values across all networks, keyed the same as var.networks except keys with no environment are omitted"
  value       = { for k, v in confluent_network.networks : k => one(v.environment) if v.environment != null && length(v.environment) > 0 }
}
output "networks_gateway" {
  description = "Map of gateway values across all networks, keyed the same as var.networks except keys with no gateway are omitted"
  value       = { for k, v in confluent_network.networks : k => v.gateway if v.gateway != null && length(v.gateway) > 0 }
}
output "networks_gcp" {
  description = "Map of gcp values across all networks, keyed the same as var.networks except keys with no gcp are omitted"
  value       = { for k, v in confluent_network.networks : k => v.gcp if v.gcp != null && length(v.gcp) > 0 }
}
output "networks_region" {
  description = "Map of region values across all networks, keyed the same as var.networks except keys with no region are omitted"
  value       = { for k, v in confluent_network.networks : k => v.region if v.region != null && length(v.region) > 0 }
}
output "networks_reserved_cidr" {
  description = "Map of reserved_cidr values across all networks, keyed the same as var.networks except keys with no reserved_cidr are omitted"
  value       = { for k, v in confluent_network.networks : k => v.reserved_cidr if v.reserved_cidr != null && length(v.reserved_cidr) > 0 }
}
output "networks_resource_name" {
  description = "Map of resource_name values across all networks, keyed the same as var.networks except keys with no resource_name are omitted"
  value       = { for k, v in confluent_network.networks : k => v.resource_name if v.resource_name != null && length(v.resource_name) > 0 }
}
output "networks_zonal_subdomains" {
  description = "Map of zonal_subdomains values across all networks, keyed the same as var.networks except keys with no zonal_subdomains are omitted"
  value       = { for k, v in confluent_network.networks : k => v.zonal_subdomains if v.zonal_subdomains != null && length(v.zonal_subdomains) > 0 }
}
output "networks_zone_info" {
  description = "Map of zone_info values across all networks, keyed the same as var.networks except keys with no zone_info are omitted"
  value       = { for k, v in confluent_network.networks : k => v.zone_info if v.zone_info != null && length(v.zone_info) > 0 }
}
output "networks_zones" {
  description = "Map of zones values across all networks, keyed the same as var.networks except keys with no zones are omitted"
  value       = { for k, v in confluent_network.networks : k => v.zones if v.zones != null && length(v.zones) > 0 }
}

