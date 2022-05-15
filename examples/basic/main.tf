provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

module "ocean-metric-exporter" {
  source            = "../.."
  image_pull_policy = "Always"
  image_tag         = "1.0.0-beta"
}

