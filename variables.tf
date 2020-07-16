variable "cluster_id" {
  description = "Cluster ID you want to use"
}

variable "aws_region" {
  description = "Region you want to use"
  default     = "ca-central-1"
}

variable "availability_zone" {
  description = "Availability zone you want to use"
  default     = "ca-central-1a"
}

variable "port" {
  description = "Port number you want to use"
  default     = 6379
}

variable "engine_version" {
  description = "Redis engine version you want to use"
  default     = "2.8.24"
}
variable "node_type" {
  description = "Node type you want to use"
  default     = "cache.m4.large"
}

variable "num_cache_nodes" {
  description = "The number of cache nodes you want"
  default     = 1
}

variable "security_group_ids" {
  description = "The security_group ids to attach the instance to"
}

variable "subnet_group_name" {
  description = "The subnet to launch the instance into"
}

variable "parameter_group_name" {
  default = "default.redis2.8"
}

variable "name" {
  description = "Cluster Name"
  default     = ""
}
