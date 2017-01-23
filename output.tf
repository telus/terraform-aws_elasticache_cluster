output "instance_primary_endpoint" {
  value = "${aws_elasticache_cluster.default.primary_endpoint}"
}

output "instance_name" {
  value = "${aws_elasticache_cluster.default.name}"
}
