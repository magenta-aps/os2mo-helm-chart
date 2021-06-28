<!--
SPDX-FileCopyrightText: Magenta ApS

SPDX-License-Identifier: MPL-2.0
-->

# Getting started
Goal: Deploying and testing the MO stack on Kubernetes

Getting started is a multi-step process:
1. Installing required tools
2. Getting a Kubernetes Cluster
3. Testing Kubernetes Cluster access
4. Deploying OS2mo

## 1. Installing required tools
Goal: Acquiring the tools necessary to bring up the project.

We need 3 tools to bring up our Kubernetes Cluster; `kind`, `kubectl` and `helm`.

### Getting kind
Goal: Ensuring that we have `kind` installed.

Note: `kind` is only required for deploying a cluster on localhost.
      Thus it can be skipped if a cluster is already available.
      For more information, see step 2: Getting a Kubernetes Cluster.

If you do not already have `kind` installed, now is the time to install it:
```
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind
sudo chown root. /usr/local/bin/kind
```

## Getting kubectl
Goal: Ensuring that we have `kubectl` installed.

If you do not already have `kubectl` installed, now is the time to install it:
```
sudo apt-get update && sudo apt-get install -y kubectl
```

## Getting kubectl
Goal: Ensuring that we have `helm` installed.

If you do not already have `helm` installed, now is the time to install it:
```
curl https://baltocdn.com/helm/signing.asc | sudo apt-key add -
sudo apt-get install apt-transport-https --yes
echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install helm
```

## 2. Getting a Kubernetes Cluster
Goal: Being able to access a cluster using `kubectl`.

If a cluster is already available, jump to step 3 to test the connection the the cluster.
If a cluster must be built, contact Labs or similar.
If a local cluster for development / testing is wanted, keep reading.

The local cluster will be built using `kind`: What is kind?

`kind` is a tool for running local Kubernetes clusters using Docker container "nodes".

Thus the only dependencies here, is that we already have a `docker`-daemon running.

### Bringing up a cluster using kind
Goal: Installing a Kubernetes Cluster with Ingress on `localhost`.

Run `./start.sh` several times, until the follow is at the end of the output:
```
...
Testing Ingress
foo
bar
```
The script creates (if required) a cluster using `kind create cluster`.
Installs an ingress controller (if required).
Deploys two applications and ingresses (if required).
And finally tests the ingress using `curl`.

At which point we have a functional Kubernetes cluster running on our docker-daemon.

## 3. Testing Kubernetes Cluster access
Goal: Ensuring that we have access to the Kubernetes Cluster.

At this point we should be able to list all pods in the cluster using:
```
$ kubectl get pods -A
```
On an empty cluster, the expected output is:
```
NAMESPACE            NAME                                         READY   STATUS    RESTARTS   AGE
kube-system          coredns-558bd4d5db-b587r                     1/1     Running   0          81s
kube-system          coredns-558bd4d5db-qb282                     1/1     Running   0          81s
kube-system          etcd-kind-control-plane                      1/1     Running   0          84s
kube-system          kindnet-gg4ng                                1/1     Running   0          81s
kube-system          kube-apiserver-kind-control-plane            1/1     Running   0          84s
kube-system          kube-controller-manager-kind-control-plane   1/1     Running   0          84s
kube-system          kube-proxy-4g4fn                             1/1     Running   0          81s
kube-system          kube-scheduler-kind-control-plane            1/1     Running   0          96s
local-path-storage   local-path-provisioner-547f784dff-ml2xm      1/1     Running   0          81s
```
Or similar.

## 4. Deploying OS2mo
Goal: Get OS2mo running on our Cluster

Simply run:
```
helm install chart/ --generate-name
```
After which OS2mo will be available on the cluster ingress.
If using the local `kind` setup, this will be: http://localhost:80/
If using another cluster use whatever method is available to access the ingress.
