# SPDX-FileCopyrightText: Magenta ApS
# SPDX-License-Identifier: MPL-2.0

output "user_name" {
  value     = rabbitmq_user.user.name
}

output "user_password" {
  value     = rabbitmq_user.user.password
  sensitive = true
}
