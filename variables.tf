variable "create_metric_exporter" {
  type        = bool
  description = "Controls whether the Spot Ocean Metric Exporter should be created."
  default     = true
}

variable "create_namespace" {
  type        = bool
  description = "Controls whether the namespace should be created if it does not yet exist."
  default     = true
}

variable "chart_version" {
  type        = string
  description = "Chart version to be deployed."
  default     = "1.0.3"
}

variable "chart_repository" {
  type        = string
  description = "Repository URL where to locate the Spot Ocean Metric Exporter chart."
  default     = "https://charts.spot.io"
}

variable "chart" {
  type        = string
  description = "Chart name to be deployed."
  default     = "ocean-metric-exporter"
}

variable "chart_namespace" {
  type        = string
  description = "Chart namespace to install the release into."
  default     = "spot-system"
}

variable "secret_name" {
  type        = string
  description = "Secret name."
  default     = null
}

variable "namespace" {
  type        = string
  description = "Kubernetes namespace where the components should be installed."
  default     = null
}

variable "config_map_name" {
  type        = string
  description = "ConfigMap name."
  default     = null
}

variable "ca_bundle_secret_name" {
  type        = string
  description = "CA bundle secret name."
  default     = null
}

variable "replica_count" {
  type        = number
  description = "Replicas."
  default     = null
}

variable "image_repository" {
  type        = string
  description = "Image repository."
  default     = null
}

variable "image_tag" {
  type        = string
  description = "Image tag."
  default     = null
}

variable "image_pull_policy" {
  type        = string
  description = "Image pull policy."
  default     = null
}

variable "image_pull_secrets" {
  type        = string
  description = "Image pull secrets."
  default     = null
}

variable "create_service" {
  type        = bool
  description = "Controls whether a service should be created."
  default     = null
}
