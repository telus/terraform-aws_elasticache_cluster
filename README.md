# terraform-ec_instance

A terraform module for managing Elasticache instances running Redis

* Assumes you're making your instances in a VPC

# Module Input Variables

Defaults:

- `engine_version` - The Redis version you want to use. Defaults to 2.8.24
- `node_type` - The Elasticache instance type, defaults to cache.m4.large
- `availability_zone` - The availability zones your node will launch into. Defaults to ca-central-1a
- `port` - Elasticache port. Defaults to 6379
- `num_cache_nodes` - Number of nodes wanted for cluster. Defaults to 1
- `security_group_ids` - Security group ID for cluster.
- `subnet_group_name` Subnet group name for cluster.
- `parameter_group_name` Parameter group name for cluster. Defaults to default.redis2.8

Required:

- `cluster_id` - Name of the Elasticache instance

# Module Outputs

- `primary_endpoint` - The endpoint for the Elasticache node
- `instance_name` - Name of the instance

# Usage

You can use this in your terraform template with the following steps.

1. Adding a module resource to your template, e.g. main.tf

```
module "instance" {
  source = "git::ssh://git@github.com/telusdigital/terraform-ec_instance"

  cluster_id = "my-cluster"
  node_type = "cache.m4.large"
}
```

# Authors

Created and maintained by [Alex Podobnik](https://github.com/alexandarp) (alexandar.podobnik@telus.com)
