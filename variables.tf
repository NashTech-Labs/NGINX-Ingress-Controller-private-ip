variable "kube_host" {
  description = "The API server address of the Kubernetes cluster"
  type        = string
}

variable "client_certificate" {
  description = "The client certificate to authenticate with the Kubernetes API"
  type        = string
}

variable "client_key" {
  description = "The client key to authenticate with the Kubernetes API"
  type        = string
}

variable "cluster_ca_certificate" {
  description = "The CA certificate for the Kubernetes cluster"
  type        = string
}

