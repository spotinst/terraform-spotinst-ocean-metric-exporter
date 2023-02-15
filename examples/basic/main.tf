provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

module "ocean-metric-exporter" {
  source            = "../.."
  image_pull_policy = "Always"
  namespace = "kube-system"
}


