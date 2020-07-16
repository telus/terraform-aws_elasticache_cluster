output "cache_nodes" {
  value = aws_elasticache_cluster.default.cache_nodes
}

output "instance_id" {
  value = aws_elasticache_cluster.default.id
}
