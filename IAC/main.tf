terraform {
  required_version = "> 0.8.0"
}

resource "null_resource" "install_minikube" {

 provisioner "local-exec" {

    command = "/bin/bash installminikube.sh"
  }
}

resource "helm_release" "argocd" {
  name = "argocd"

  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  namespace        = "argocd"
  create_namespace = true
  version          = "3.35.4"

  values = [file("values/argocd.yaml")]
  depends_on = [null_resource.install_minikube]
}
