# SPDX-FileCopyrightText: Magenta ApS
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    keycloak = {
      source  = "mrparkers/keycloak"
      version = "3.6.0"
    }
  }
}

provider "keycloak" {
  client_id = var.admin_client_id
  username  = var.admin_username
  password  = var.admin_password
  url       = var.url
}

data "keycloak_realm" "mo" {
  realm = "mo"
}

data "keycloak_role" "roles" {
  for_each = var.client_roles

  realm_id = data.keycloak_realm.mo.id
  name     = each.key
}

resource "random_password" "client_secret" {
  length  = 32
  special = false
}

resource "keycloak_openid_client" "client" {
  realm_id  = data.keycloak_realm.mo.id
  client_id = var.client_name

  name                     = var.client_name
  access_type              = "CONFIDENTIAL"
  service_accounts_enabled = true
  access_token_lifespan    = var.client_lifespan

  client_secret = coalesce(var.client_secret, random_password.client_secret.result)
}

resource "keycloak_openid_client_service_account_realm_role" "client_role" {
  for_each = var.client_roles

  realm_id                = data.keycloak_realm.mo.id
  service_account_user_id = keycloak_openid_client.client.service_account_user_id
  role                    = data.keycloak_role.roles[each.key].name
}
