variable "namespace" {
  type        = string
  description = "Chart namespace to install the release into."
  default     = "kube-system"
}
