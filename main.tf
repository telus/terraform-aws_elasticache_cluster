module "instance" {
  source = "git::ssh://git@github.com/telusdigital/terraform-aws_elasticache_cluster"

  cluster_id = "strikeforce-cluster"
  node_type = "cache.m4.large"
}
