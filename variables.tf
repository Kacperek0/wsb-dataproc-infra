variable "gcp_project" {
  type        = string
  description = "GCP Project ID"
}

variable "gcp_region" {
  type        = string
  description = "GCP Region name"
  default     = "europe-west3"
}

variable "gcp_az" {
  type        = string
  description = "GCP Zone symbol"
  default     = "europe-west3-b"
}

variable "bucket_name" {
  type        = string
  description = "Bucket name"
}

variable "cluster_name" {
  type        = string
  description = "Cluster name"
}

variable "label_env" {
  type        = string
  description = "Label to name env type"
  default     = "development"
}

variable "master_instances" {
  type        = number
  description = "Number of master nodes"
  default     = 1
}

variable "instance_type" {
  type        = string
  description = "Instance type"
  default     = "n1-standard-4"
}

variable "disk_size" {
  type        = number
  description = "Disk size in GB"
  default     = 50
}

variable "image_ver" {
  type        = string
  description = "Version of image used on VMs"
  default     = "2.0-debian10"
}
