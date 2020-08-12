resource "aws_elasticache_cluster" "default" {
  cluster_id           = var.cluster_id
  engine               = "redis"
  engine_version       = var.engine_version
  node_type            = var.node_type
  #availability_zone    = var.availability_zone
  port                 = var.port
  num_cache_nodes      = var.num_cache_nodes
  security_group_ids   = [var.security_group_ids]
  subnet_group_name    = var.subnet_group_name
  parameter_group_name = var.parameter_group_name
  tags = {
    Name = var.name
  }
}
