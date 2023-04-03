variable "cluster_name" {
  description = "The name of the cluster, unique within the project and zoneData"
  default     = ""
}

variable "project_id" {
  description = "The project in which the cluster will exist"
  default     = ""
}

variable "region" {
  description = "The region in which the cluster and associated nodes will be created in"
  default     = ""
}

variable "network" {
  description = "The network in which the cluster and associated nodes will be created in"
  default     = ""
}

variable "subnetwork" {
  description = "The subnet in which the cluster and associated nodes will be created in"
  default     = ""
}

variable "zone" {
  description = "The zone in which the cluster and associated nodes will be created in"
  default     = ""
}

variable "network_tags" {
  description = "The list of tags to be applied to instances in the cluster"
  default     = [""]
}

variable "labels" {
  description = "The list of labels (key/value pairs) to be applied to instances in the cluster"
  default     = {}
}

variable "staging_bucket" {
  description = "The Cloud Storage staging bucket used to stage files, such as Hadoop jars, between client machines and the cluster"
  default     = ""
}

variable "master_num_instances" {
  description = "Specifies the number of master nodes to create"
  default     = 1
}

variable "master_machine_type" {
  description = "The name of a Google Compute Engine machine type to create for the master"
  default     = ""
}

variable "master_boot_disk_type" {
  description = "Specifies the tpye of master nodes boot disk"
  default     = "pd-ssd"
}

variable "master_boot_disk_size_gb" {
  description = "Size of the primary disk attached to each node, specified in GB"
  default     = 500
}

variable "master_num_local_ssds" {
  description = "The amount of local SSD disks that will be attached to master cluster node"
  default     = 0
}

variable "worker_num_instances" {
  description = "Specifies the number of worker nodes to create"
  default     = 2
}

variable "worker_machine_type" {
  description = "The name of a Google Compute Engine machine type to create for the worker nodes"
  default     = ""
}

variable "worker_boot_disk_type" {
  description = "Specifies the tpye of worker nodes boot disk"
  default     = ""
}

variable "worker_boot_disk_size_gb" {
  description = "Size of the primary disk attached to each worker node, specified in GB"
  default     = 500
}

variable "worker_num_local_ssds" {
  description = "The amount of local SSD disks that will be attached to each worker cluster node"
  default     = 0
}

variable "preemptible_num_instances" {
  description = "Specifies the number of preemptible nodes to create"
  default     = 2
}

variable "preemptible_boot_disk_type" {
  description = "Specifies the tpye of preemptible worker nodes boot disk"
  default     = "pd-standard"
}

variable "preemptible_boot_disk_size_gb" {
  description = "Size of the primary disk attached to each preemptible worker node, specified in GB"
  default     = 500
}

variable "preemptible_num_local_ssds" {
  description = "The amount of local SSD disks that will be attached to each preemptible worker cluster node"
  default     = 0
}

variable "image_version" {
  description = "The Cloud Dataproc image version to use for the cluster"
  default     = ""
}

variable "service_account" {
  description = "Service Account the project"
  default     = ""
}

variable "enable_http_port_access" {
  description = "access external endpoint"
  default     = "true"

}

variable "policy_uri" {
  default = ""
}