# SPDX-FileCopyrightText: Magenta ApS
# SPDX-License-Identifier: MPL-2.0

# Provider
variable "provider_endpoint" {
  type        = string
  description = "RabbitMQ management plugin server URL"
  default     = "http://rabbitmq"
}
variable "provider_username" {
  type        = string
  description = "RabbitMQ virtual host admin username"
  default     = "admin"
}
variable "provider_password" {
  type        = string
  description = "RabbitMQ virtual host admin password"
  sensitive   = true
}

# Virtual Host
variable "vhost_name" {
  type        = string
  description = "Name of the virtual host"
}

# User
variable "user_name" {
  type        = string
  description = "Username of the created user"
}
variable "user_password" {
  type        = string
  description = "Password of the created user. If not set, one will be generated and output as 'user_password'"
  default     = null
  sensitive   = true
}
variable "user_tags" {
  type        = set(string)
  description = "Tags to set on the created user"
  default     = []
}

variable "user_permissions" {
  type = object({
    configure = string,
    read      = string,
    write     = string
  })
  description = "Permissions to set on the created user"
}
variable "topic_permissions" {
  type = object({
    exchange = string
    read     = string,
    write    = string
  })
  description = "Topic permissions for the created user"
  default     = null
}
