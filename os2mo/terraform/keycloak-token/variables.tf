# SPDX-FileCopyrightText: Magenta ApS
# SPDX-License-Identifier: MPL-2.0

# REST API Credentials
#---------------------
variable "admin_client_id" {
  type        = string
  description = ""
  default     = "admin-cli"
}
variable "admin_username" {
  type        = string
  description = "Keycloak API admin account"
  default     = "admin"
}
variable "admin_password" {
  type        = string
  description = "Keycloak API admin password"
  sensitive   = true
}
variable "url" {
  type        = string
  description = "Keycloak Root URL"
  default     = "http://keycloak-service:8080"
}

# Client configuration
#---------------------
variable "client_name" {
  type        = string
  description = "Name of the OpenID Client"
}
variable "client_lifespan" {
  type        = number
  description = "Lifespan of access tokens"
  default     = 300
}
variable "client_secret" {
  type        = string
  description = "Preshared client secret. If not set, one will be generated and output as client_secret."
  sensitive   = true
  default     = null
}
variable "client_roles" {
  type        = set(string)
  description = "Set of roles to attach to the client"
  default     = []
}
