#!/bin/bash

# SPDX-FileCopyrightText: Magenta ApS
#
# SPDX-License-Identifier: MPL-2.0

KIND="${KIND:-kind}"
KUBECTL="${KUBECTL:-kubectl}"

if ! command -v "${KIND}" &> /dev/null; then
    echo "'kind' could not be found"
    exit 1
fi
if ! command -v "${KUBECTL}" &> /dev/null; then
    echo "'kubectl' could not be found"
    exit 1
fi
OS2MO_CLUSTER_EXISTS=$(${KIND} get clusters | grep "os2mo")
if [ -z "${OS2MO_CLUSTER_EXISTS}" ]; then
    ${KIND} create cluster --config=cluster-config.yaml --name os2mo
    echo ""
fi

kubectl apply -f https://github.com/datawire/ambassador-operator/releases/latest/download/ambassador-operator-crds.yaml
kubectl apply -n ambassador -f https://github.com/datawire/ambassador-operator/releases/latest/download/ambassador-operator-kind.yaml
sleep 3
kubectl wait --timeout=180s -n ambassador --for=condition=deployed ambassadorinstallations/ambassador

helm repo add mittwald https://helm.mittwald.de
helm repo update
helm upgrade --install kubernetes-secret-generator mittwald/kubernetes-secret-generator
