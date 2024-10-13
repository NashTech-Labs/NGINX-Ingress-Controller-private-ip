# NGINX Ingress Controller Deployment using Terraform

This Terraform module deploys an internal-facing NGINX ingress controller in an existing Azure Kubernetes Service (AKS) cluster. The NGINX ingress controller is configured with a private IP address using an internal Azure Load Balancer.

## Prerequisites

Ensure you have the following prerequisites before using this module:

- An **existing Azure Kubernetes Service (AKS) cluster**.
- Terraform installed locally.
- Access to the Kubernetes cluster via `kubectl`.
- Azure CLI installed for managing Azure resources.

## Variables

You need to provide the following information in `terraform.tfvars` or via CLI:

- `kube_host`: The Kubernetes API server URL.
- `client_certificate`: Base64 encoded Kubernetes client certificate.
- `client_key`: Base64 encoded client key to authenticate with Kubernetes.
- `cluster_ca_certificate`: Base64 encoded CA certificate of the Kubernetes cluster.

## Usage

### 1. Clone the repository:

```bash
git clone <repository-url>
cd terraform-aks-nginx
```

### 2. Customize nginx-internal-controller.yaml (Optional):
By default, the nginx-internal-controller.yaml file will create an internal-facing NGINX ingress controller. You can modify the YAML file to suit your needs.

### 3. Update terraform.tfvars:
Create or update the terraform.tfvars file with your AKS cluster details, including the Kubernetes host, client certificate, client key, and CA certificate.

### 4. Apply
```bash
terraform init
terraform apply
```

### 5. Verify the deployment
```bash
kubectl get nginxingresscontroller -n default
```
