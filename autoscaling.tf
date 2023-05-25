resource "google_dataproc_autoscaling_policy" "asp" {
  project   = ""
  policy_id = "dataproc-policy"
  location  = var.region
  worker_config {
    min_instances = 2
    max_instances = 5
  }
  secondary_worker_config {
    min_instances = 2
    max_instances = 10
  }
  basic_algorithm {
    yarn_config {
      graceful_decommission_timeout = "10s" #7200/2h

      scale_up_factor   = 0.03
      scale_down_factor = 1.0
    }
  }
}