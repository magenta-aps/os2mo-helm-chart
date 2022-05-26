# SPDX-FileCopyrightText: Magenta ApS
# SPDX-License-Identifier: MPL-2.0

output "client_secret" {
  value = keycloak_openid_client.client.client_secret
  sensitive = true
}
