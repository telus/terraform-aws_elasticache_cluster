variable "cluster_id" {}

variable "aws_region" {
  default = "ca-central-1"
}

variable "availability_zone" {
  default = "ca-central-1a"
}

variable "port" {
  default = 6379
}

variable "engine_version" {
  default = "2.8.24"
}
variable "node_type" {
  default = "cache.m4.large"
}

variable "num_cache_nodes" {
  default = 1
}

variable "security_group_ids" {
  default = ""
}

variable "subnet_group_name" {
  default = ""
}

variable "parameter_group_name" {
  default = "default.redis2.8"
}
