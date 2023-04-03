output "cluster_name" {
  description = "Name of the cluster created"
  value       = module.dataproc_cluster.cluster_name
}

output "cluster_master_node" {
  description = "Name of the Master node"
  value       = module.dataproc_cluster.dataproc_master_instance_names
}

output "cluster_worker_nodes" {
  description = "Number of the worker nodes"
  value       = module.dataproc_cluster.dataproc_worker_instance_names
}