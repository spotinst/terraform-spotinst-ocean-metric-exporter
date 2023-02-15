resource "helm_release" "this" {
  count            = var.create_metric_exporter ? 1 : 0
  name             = var.chart
  chart            = var.chart
  repository       = var.chart_repository
  version          = var.chart_version
  create_namespace = var.create_namespace
  namespace        = var.chart_namespace

  dynamic "set" {
    for_each = var.namespace != null ? ["namespace"] : []
    content {
      name  = "oceanController.namespace"
      value = var.namespace
    }
  }

  dynamic "set" {
    for_each = var.secret_name != null ? ["secret_name"] : []
    content {
      name  = "oceanController.secretName"
      value = var.secret_name
    }
  }

  dynamic "set" {
    for_each = var.config_map_name != null ? ["config_map_name"] : []
    content {
      name  = "oceanController.configMapName"
      value = var.config_map_name
    }
  }

  dynamic "set" {
    for_each = var.ca_bundle_secret_name != null ? ["ca_bundle_secret_name"] : []
    content {
      name  = "oceanController.caBundleSecretName"
      value = var.ca_bundle_secret_name
    }
  }

  dynamic "set" {
    for_each = var.replica_count != null ? ["replica_count"] : []
    content {
      name  = "replicaCount"
      value = var.replica_count
    }
  }

  dynamic "set" {
    for_each = var.image_repository != null ? ["image_repository"] : []
    content {
      name  = "image.repository"
      value = var.image_repository
    }
  }

  dynamic "set" {
    for_each = var.image_tag != null ? ["image_tag"] : []
    content {
      name  = "image.tag"
      value = var.image_tag
    }
  }

  dynamic "set" {
    for_each = var.image_pull_policy != null ? ["image_pull_policy"] : []
    content {
      name  = "image.pullPolicy"
      value = var.image_pull_policy
    }
  }

  dynamic "set" {
    for_each = var.image_pull_secrets != null ? ["image_pull_secrets"] : []
    content {
      name  = "image.pullSecrets"
      value = var.image_pull_secrets
    }
  }

  dynamic "set" {
    for_each = var.create_service != null ? ["create_service"] : []
    content {
      name  = "service.create"
      value = var.create_service
    }
  }

  dynamic "set" {
    for_each = var.metricsconfiguration_categories != null ? ["metricsconfiguration_categories"] : []
    content {
      name  = "metricsConfiguration.categories"
      value = "{${join(",", var.metricsconfiguration_categories)}}"
    }
  }
}