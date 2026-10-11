variable "networks" {
  description = <<EOT
Map of networks, attributes below
Required:
    - cloud
    - connection_types
    - region
    - environment (block):
        - id (required)
Optional:
    - cidr
    - display_name
    - reserved_cidr
    - zones
    - aws (block):
    - azure (block):
    - dns_config (block):
        - resolution (required)
    - gcp (block):
    - timeouts (block):
        - create (optional)
        - delete (optional)
    - zone_info (block):
        - cidr (optional)
        - zone_id (optional)
EOT

  type = map(object({
    cloud            = string
    connection_types = list(string)
    region           = string
    cidr             = optional(string)
    display_name     = optional(string)
    reserved_cidr    = optional(string)
    zones            = optional(list(string))
    environment = object({
      id = string
    })
    aws = optional(list(object({
    })))
    azure = optional(list(object({
    })))
    dns_config = optional(object({
      resolution = string
    }))
    gcp = optional(list(object({
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
    zone_info = optional(list(object({
      cidr    = optional(string)
      zone_id = optional(string)
    })))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

