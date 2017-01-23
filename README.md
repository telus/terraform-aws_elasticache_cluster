# terraform-ec_instance

A terraform module for managing EC instances running Redis

* Assumes you're making your instances in a VPC

# Module Input Variables

Defaults:

- `node_type` - The EC instance type, defaults to cache.m3.medium
- `availability_zones` - The availability zones your node will launch into. Defaults to ca-central-1a and ca-central-1b
- `port` - EC port. Defaults to 6379
- `num_cache_nodes` - Number of nodes wanted for cluster. Defaults to 2
- `security_group_ids` - Security group ID for cluster.
- `subnet_group_name` Subnet group name for cluster.
- `parameter_group_name` Parameter group name for cluster. Defaults to default.redis2.8

Required:

- `cluster_id` - Name of the EC instance

# Module Outputs

- `primary_endpoint` - The endpoint for the EC node
- `instance_name` - Name of the instance

# Authors

Created and maintained by [Alex Podobnik](https://github.com/alexandarp) (alexandar.podobnik@telus.com)
