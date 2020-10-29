resource "aws_cloudwatch_metric_alarm" "elasticache_alarm_cpu" {
  count               = var.num_cache_nodes
  alarm_name          = "elasticache-alarm-cpu-${var.cluster_id}-00${count.index + 1}"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/ElastiCache"
  period              = 60
  threshold           = var.alarm_threshold_cpu
  statistic           = "Average"
  alarm_actions = [
    var.alarm_sns_topic,
  ]
  ok_actions = [
    var.alarm_sns_topic,
  ]
  dimensions = {
    CacheClusterId = var.cluster_id
  }
}

resource "aws_cloudwatch_metric_alarm" "elasticache_alarm_memory" {
  count               = var.num_cache_nodes
  alarm_name          = "elasticache-alarm-memory-${var.cluster_id}-00${count.index + 1}"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "DatabaseMemoryUsagePercentage"
  namespace           = "AWS/ElastiCache"
  period              = 60
  threshold           = var.alarm_threshold_memory
  statistic           = "Average"
  alarm_actions = [
    var.alarm_sns_topic,
  ]
  ok_actions = [
    var.alarm_sns_topic,
  ]
  dimensions = {
    CacheClusterId = var.cluster_id
  }
}

resource "aws_cloudwatch_metric_alarm" "elasticache_alarm_evictions" {
  alarm_name          = "elasticache-alarm-evictions-${var.cluster_id}"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "Evictions"
  namespace           = "AWS/ElastiCache"
  period              = 960
  threshold           = var.alarm_threshold_evictions
  statistic           = "Average"
  alarm_actions = [
    var.alarm_sns_topic,
  ]
  ok_actions = [
    var.alarm_sns_topic,
  ]
  dimensions = {
    CacheClusterId = var.cluster_id
  }
}

resource "aws_cloudwatch_metric_alarm" "elasticache_alarm_swap" {
  alarm_name          = "elasticache-alarm-swap-${var.cluster_id}"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "SwapUsage"
  namespace           = "AWS/ElastiCache"
  period              = 300
  threshold           = var.alarm_threshold_swap
  statistic           = "Average"
  alarm_actions = [
    var.alarm_sns_topic,
  ]
  ok_actions = [
    var.alarm_sns_topic,
  ]
  dimensions = {
    CacheClusterId = var.cluster_id
  }
}
