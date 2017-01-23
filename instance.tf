resource "aws_elasticache_cluster" "default" {
  cluster_id = "${var.cluster_id}"
  engine = "redis"
  node_type = "${var.node_type}"
  availability_zones = "${var.availability_zones}"
  port = "${var.port}"
  num_cache_nodes = "${var.num_cache_nodes}"
  security_group_ids "${var.security_group_ids}"
  subnet_group_name = "${var.subnet_group_name}"
  parameter_group_name = "${var.parameter_group_name}"
}
