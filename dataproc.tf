provider "google" {
  project = var.gcp_project
  region  = var.gcp_region
  zone    = var.gcp_az
}

module "dataproc_cluster" {
  source = "./modules"

  bucket_name      = var.bucket_name
  cluster_name     = var.cluster_name
  gcp_region       = var.gcp_region
  label_env        = var.label_env
  master_instances = var.master_instances
  instance_type    = var.instance_type
  disk_size        = var.disk_size
  image_ver        = var.image_ver
}
