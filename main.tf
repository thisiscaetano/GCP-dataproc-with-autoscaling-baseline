module "dataproc_cluster" {
  source          = "../../../carrefour.com/modules/gc_dataproc"
  cluster_name    = var.cluster_name
  project_id      = var.project_id
  region          = var.region
  zone            = var.zone
  network         = var.network
  subnetwork      = var.subnetwork
  network_tags    = var.network_tags
  service_account = var.service_account
  staging_bucket  = var.staging_bucket
  policy_name     = var.policy_uri
  #labels          = local.labels

  // master_config
  master_num_instances     = var.master_num_instances
  master_machine_type      = var.master_machine_type
  master_boot_disk_type    = var.master_boot_disk_type
  master_boot_disk_size_gb = var.master_boot_disk_size_gb
  master_num_local_ssds    = var.master_num_local_ssds

  // worker_config
  worker_num_instances     = var.worker_num_instances
  worker_machine_type      = var.worker_machine_type
  worker_boot_disk_type    = var.worker_boot_disk_type
  worker_boot_disk_size_gb = var.worker_boot_disk_size_gb
  worker_num_local_ssds    = var.worker_num_local_ssds

  // preemptible_worker_config
  preemptible_num_instances     = var.preemptible_num_instances
  preemptible_boot_disk_type    = var.preemptible_boot_disk_type
  preemptible_boot_disk_size_gb = var.preemptible_boot_disk_size_gb
  preemptible_num_local_ssds    = var.preemptible_num_local_ssds

  // software_config
  image_version = var.image_version

  // enabled external endpoint
  enable_http_port_access = var.enable_http_port_access

  depends_on = [
    google_dataproc_autoscaling_policy.asp
  ]
}
