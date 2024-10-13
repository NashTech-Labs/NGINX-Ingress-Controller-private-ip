provider "kubernetes" {
  host                   = var.kube_host
  client_certificate      = base64decode(var.client_certificate)
  client_key              = base64decode(var.client_key)
  cluster_ca_certificate  = base64decode(var.cluster_ca_certificate)
}

resource "kubernetes_manifest" "nginx_controller" {
  yaml_body = file("${path.module}/nginx-internal-controller.yaml")
}

output "nginx_controller_status" {
  value = kubernetes_manifest.nginx_controller.status
}

