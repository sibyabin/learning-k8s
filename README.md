# LEARNING KUBERNETES (k8s) 


| SI | Sections |
| ------ | ------ |
| 1 | [What is Kuberbnetes](#1-what-is-kubernetes) |
| 2 | [Sample Architecture](#2-sample-architecture) |
| 3 | [Container Orchestration Solutions](#3-container-orchestration-solutions)|
| 4 | [Installation Options](#4-installation-options) | 
| 5 | [Getting Started](#5-getting-started) | 
| 6 | []() | 



<hr>

## 1. WHAT IS KUBERNETES


## 2. SAMPLE ARCHITECTURE 
![Kubernetes](resources/images/kubernetes-architecture.svg?raw=true "Kubernetes Architecture")

<hr>

## 3. CONTAINER ORCHESTRATION SOLUTIONS
- Docker Swarm
- **Kubernetes**
- Apache Mesos
- AWS ECS
- AWS EKS 
- ....

<hr>

## 4. INSTALLATION OPTIONS
| SI | Option | Examples / Usage |
| -- | ------ | ------ |
| 1 |Managed Kubernetes Service| > EKS (AWS)<br> > AKS (Azure)<br> > GKS (Google)<br> > Digital Ocean|
| 2 |Minikube| > Single node Kubernetes cluster<br> > Apt for local development|
| 3 |Manual Kubernetes Installation| > Hardway <br> > Need to setup and configure K8 master, Workder nodes , other components and then integrate them |

<hr>

## 5. GETTING STARTED
When starting with Kubernetes, opting for managed services is the more convenient choice, and in our case, we will be going with **DigitalOcean** to take advantage of the credits offered for 60 days.

#### • Create an account with Digital Ocean

> Take advantage of this exclusive referral link to access a generous $200 credit, available for a duration of 60 days.
[https://m.do.co/c/20bb921d3d4b](https://m.do.co/c/20bb921d3d4b)

#### • Create a kubernetes cluster

#### • Download the cluster config

#### • Install the Kubectl CLI 
Use the installation script in this repository
        ``` sh kubectl-installer.sh ```

#### • kubectl integration with cluster
Copy the downloaded cluster config file as _~/.kube/config_
```
mkdir ~/.kube
cp path/to/downloaded-cluster-config ~/.kube/config
```
Verify the installation by running the cluster-info command
``` 
kubectl cluster-info
```

Sample Output:
```
pi@raspberrypi:~ $ kubectl cluster-info
Kubernetes control plane is running at https://< your-cluster-id >.k8s.ondigitalocean.com
CoreDNS is running at https://< your-cluster-id >api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
```
