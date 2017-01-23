variable "cluster_id" {}

variable "aws_region" {
  default = "ca-central-1"
}

variable "availability_zones" {
  default =  [
    "ca-central-1a",
    "ca-central-1b"
  ]
}

variable "port" {
  default = 6379
}

variable "node_type" {
  default = "cache.m3.medium"
}

variable "num_cache_nodes" {
  default = 2
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
