# Spot Ocean Metric Exporter Terraform Module

Short description of the module.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Examples](#examples)
- [Requirements](#requirements)
- [Providers](#providers)
- [Modules](#modules)
- [Resources](#resources)
- [Inputs](#inputs)
- [Outputs](#outputs)
- [Documentation](#documentation)
- [Getting Help](#getting-help)
- [Community](#community)
- [Contributing](#contributing)
- [License](#license)

## Usage

```hcl
module "ocean-metric-exporter" {
  source = "spotinst/ocean-metric-exporter/spotinst"
  
}
```

## Examples

- [Basic](examples/basic)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_spotinst"></a> [spotinst](#requirement\_spotinst) | >= 1.39.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.5.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.this](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ca_bundle_secret_name"></a> [ca\_bundle\_secret\_name](#input\_ca\_bundle\_secret\_name) | (Optional) caBundle Secret name. | `string` | `null` | no |
| <a name="input_chart"></a> [chart](#input\_chart) | Chart name to be deployed | `string` | `"ocean-metric-exporter"` | no |
| <a name="input_chart_namespace"></a> [chart\_namespace](#input\_chart\_namespace) | Chart namespace to install the release into | `string` | `"spot-system"` | no |
| <a name="input_chart_repository"></a> [chart\_repository](#input\_chart\_repository) | Repository URL where to locate the Spot Ocean Metrics Exporter chart | `string` | `"https://charts.spot.io"` | no |
| <a name="input_chart_version"></a> [chart\_version](#input\_chart\_version) | Chart version to be deployed | `string` | `"1.0.0"` | no |
| <a name="input_config_map_name"></a> [config\_map\_name](#input\_config\_map\_name) | (Optional) ConfigMap name. | `string` | `null` | no |
| <a name="input_create_metrics_exporter"></a> [create\_metrics\_exporter](#input\_create\_metrics\_exporter) | Controls whether the Spot Ocean Metrics Exporter should be created | `bool` | `true` | no |
| <a name="input_create_namespace"></a> [create\_namespace](#input\_create\_namespace) | Controls whether the namespace should be created if it does not yet exist | `bool` | `true` | no |
| <a name="input_image_pull_policy"></a> [image\_pull\_policy](#input\_image\_pull\_policy) | (Optional) Image pull policy. | `string` | `null` | no |
| <a name="input_image_pull_secrets"></a> [image\_pull\_secrets](#input\_image\_pull\_secrets) | (Optional) Image pull secrets. | `string` | `null` | no |
| <a name="input_image_repository"></a> [image\_repository](#input\_image\_repository) | (Optional) Image repository. | `string` | `null` | no |
| <a name="input_image_tag"></a> [image\_tag](#input\_image\_tag) | (Optional) Image tag | `string` | `null` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | (Optional) Kubernetes namespace where the components should be installed. | `string` | `null` | no |
| <a name="input_replica_count"></a> [replica\_count](#input\_replica\_count) | (Optional) Replicas. | `number` | `null` | no |
| <a name="input_secret_name"></a> [secret\_name](#input\_secret\_name) | (Optional) Secret name | `string` | `null` | no |
| <a name="input_service_create"></a> [service\_create](#input\_service\_create) | (Optional) Controls whether a service should be created. | `bool` | `null` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Documentation

If you're new to [Spot](https://spot.io/) and want to get started, please checkout our [Getting Started](https://docs.spot.io/connect-your-cloud-provider/) guide, available on the [Spot Documentation](https://docs.spot.io/) website.

## Getting Help

We use GitHub issues for tracking bugs and feature requests. Please use these community resources for getting help:

- Ask a question on [Stack Overflow](https://stackoverflow.com/) and tag it with [terraform-spotinst](https://stackoverflow.com/questions/tagged/terraform-spotinst/).
- Join our [Spot](https://spot.io/) community on [Slack](http://slack.spot.io/).
- Open an issue.

## Community

- [Slack](http://slack.spot.io/)
- [Twitter](https://twitter.com/spot_hq/)

## Contributing

Please see the [contribution guidelines](.github/CONTRIBUTING.md).

## License

Code is licensed under the [Apache License 2.0](LICENSE).
