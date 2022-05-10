// spotinst/ocean-metric-exporter

variable "create_metrics_exporter" {
  type        = bool
  description = "Controls whether the Spot Ocean Metrics Exporter should be created"
  default     = true
}

variable "create_namespace" {
  type        = bool
  description = "Controls whether the namespace should be created if it does not yet exist"
  default     = true
}

variable "chart_version" {
  type        = string
  description = "Chart version to be deployed"
  default     = "1.0.0"
}

variable "chart_repository" {
  type        = string
  description = "Repository URL where to locate the Spot Ocean Metrics Exporter chart"
  default     = "https://charts.spot.io"
}

variable "chart" {
  type        = string
  description = "Chart name to be deployed"
  default     = "ocean-metric-exporter"
}

variable "chart_namespace" {
  type        = string
  description = "Chart namespace to install the release into"
  default     = "spot-system"
}

variable "secret_name" {
  type        = string
  description = "(Optional) Secret name"
  default     = null
}

#k8s parameters that depends on spot ocean controller parameters
variable "namespace" {
  type        = string
  description = "(Optional) Kubernetes namespace where the components should be installed."
  default     = null
}

variable "config_map_name" {
  type        = string
  description = "(Optional) ConfigMap name."
  default     = null
}

variable "ca_bundle_secret_name" {
  type        = string
  description = "(Optional) CA bundle secret name."
  default     = null
}

variable "replica_count" {
  type        = number
  description = "(Optional) Replicas."
  default     = null
}

variable "image_repository" {
  type        = string
  description = "(Optional) Image repository."
  default     = null
}

variable "image_tag" {
  type        = string
  description = "(Optional) Image tag"
  default     = null
}

variable "image_pull_policy" {
  type        = string
  description = "(Optional) Image pull policy."
  default     = null
}

variable "image_pull_secrets" {
  type        = string
  description = "(Optional) Image pull secrets."
  default     = null
}

variable "service_create" {
  type        = bool
  description = "(Optional) Controls whether a service should be created."
  default     = null
}

