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

  validation {
    condition     = can(regex("[a-zA-Z][a-zA-Z0-9]*", var.name))
    error_message = "DBName must begin with a letter and contain only alphanumeric characters."
  }
}

variable "alarm_threshold_cpu" {
  description = "Threshold for cpu alarm in %"
  type        = number
  default     = 80
}

variable "alarm_threshold_memory" {
  description = "Memory in percent"
  type        = number
  default     = 80
}

variable "alarm_threshold_evictions" {
  description = "Threshold for evictions alarm"
  type        = number
  default     = 0
}

variable "alarm_threshold_swap" {
  description = "Threshold for swap alarm"
  type        = number
  default     = 419430400 # 40MB, 80% of recommended 50MB limit
}

variable "alarm_sns_topic" {
  description = "SNS Topic used for alarms"
  default     = "arn:aws:sns:ca-central-1:202758669767:db_alarms" # Configured in DataVPC repo: https://github.com/telus/terraform-openshift-datavpc-main/blob/master/aws-sns-alarms.tf
}
