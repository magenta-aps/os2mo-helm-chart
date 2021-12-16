#!/bin/sh
# SPDX-FileCopyrightText: Magenta ApS
#
# SPDX-License-Identifier: MPL-2.0

sed -i '/^version/d' chart/Chart.yaml
grep "^version = " pyproject.toml | sed 's/ = /: /g' | tr -d '"' >> chart/Chart.yaml
