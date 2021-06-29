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

## 5. Using Dipex
Goal: Get data into OS2mo

Currently there are two ways of getting data into OS2mo:
1. Using the fixture loader
2. Using the data integrations

### 5.1 Using the fixture loader
Goal: Get data into OS2mo

Using the fixture loader is simple, simply set `load_fixture: true` and update the deployment.
The fixture loader will run, and load the Kolding Fixture into the OS2mo instance.

### 5.2
Goal: Get data into OS2mo

The following section will be a generalized setup, as dataloading depends on the integration used.
However several steps are generic, and can be presented here.

First, any configuration required in the `settings.json` file, should be added via the `values.yaml`
and `secrets.yaml` files in `values/{{ CUSTOMER }}/{{ ENVIRONMENT }}/`.

Once this is done, update the deployment using `helm secrets upgrade -f values.yaml -f secrets.yaml ...`.
After this we should have a DIPEX deployment pod running.

In order to actually use MO we need a root organisation which must be created manually from the dipex container.

First use `kubectl get pods` to find the name of the dipex pod and then attach a shell with:
```
kubectl exec -it dipex-deployment-676d7798b6-bvmn9 -- /bin/bash
```
At this point, the settingsfile must be generated using the following commands:
```
python3 tools/k8s_gen_settings.py /opt/settings/ /opt/secrets/ > settings/settings.json
touch settings/cpr_uuid_map.csv
mkdir tmp
```
To setup a root organisation and some default classes use `python3 tools/default_mo_setup.py`

Now you _should_ be ready to use dipex commands, such as:
```
python3 integrations/SD_Lon/sd_changed_at.py --init
```
or equivalently:
```
bash tools/job-runner.sh imports_sd_changed_at
```
