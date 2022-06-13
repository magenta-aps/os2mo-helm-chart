# SPDX-FileCopyrightText: Magenta ApS
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    rabbitmq = {
      source  = "cyrilgdn/rabbitmq"
      version = "1.6.0"
    }
  }
}

provider "rabbitmq" {
  endpoint = var.provider_endpoint
  username = var.provider_username
  password = var.provider_password
}

# User
resource "random_password" "user_password" {
  length  = 32
  special = false
}
resource "rabbitmq_user" "user" {
  name     = var.user_name
  password = coalesce(var.user_password, random_password.user_password.result)
  tags     = var.user_tags
}

resource "rabbitmq_permissions" "user" {
  user  = rabbitmq_user.user.name
  vhost = var.vhost_name

  # https://www.rabbitmq.com/access-control.html#authorisation
  permissions {
    configure = var.user_permissions.configure
    read      = var.user_permissions.read
    write     = var.user_permissions.write
  }
}
resource "rabbitmq_topic_permissions" "user" {
  count = var.topic_permissions == null ? 0 : 1

  user  = rabbitmq_user.user.name
  vhost = var.vhost_name

  # https://www.rabbitmq.com/access-control.html#topic-authorisation
  permissions {
    exchange = var.topic_permissions.exchange
    read     = var.topic_permissions.read
    write    = var.topic_permissions.write
  }
}
