resource "confluent_network" "networks" {
  for_each = var.networks

  cloud            = each.value.cloud
  connection_types = each.value.connection_types
  region           = each.value.region
  cidr             = each.value.cidr
  display_name     = each.value.display_name
  reserved_cidr    = each.value.reserved_cidr
  zones            = each.value.zones

  environment {
    id = each.value.environment.id
  }

  dynamic "aws" {
    for_each = each.value.aws != null ? each.value.aws : []
    content {
    }
  }

  dynamic "azure" {
    for_each = each.value.azure != null ? each.value.azure : []
    content {
    }
  }

  dynamic "dns_config" {
    for_each = each.value.dns_config != null ? [each.value.dns_config] : []
    content {
      resolution = dns_config.value.resolution
    }
  }

  dynamic "gcp" {
    for_each = each.value.gcp != null ? each.value.gcp : []
    content {
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }

  dynamic "zone_info" {
    for_each = each.value.zone_info != null ? each.value.zone_info : []
    content {
      cidr    = zone_info.value.cidr
      zone_id = zone_info.value.zone_id
    }
  }
}

