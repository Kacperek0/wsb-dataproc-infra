resource "google_storage_bucket" "cluster_bucket" {
  name          = var.bucket_name
  location      = "EU"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
}

resource "google_dataproc_cluster" "wsb_cluster" {
  name   = var.cluster_name
  region = var.gcp_region
  labels = {
    env = var.label_env
  }

  cluster_config {
    staging_bucket = google_storage_bucket.cluster_bucket.name

    master_config {
      num_instances = var.master_instances
      machine_type  = var.instance_type
      disk_config {
        boot_disk_size_gb = var.disk_size
      }
    }

    worker_config {
      num_instances = (var.master_instances * 2)
      machine_type  = var.instance_type
      disk_config {
        boot_disk_size_gb = var.disk_size
      }
    }

    software_config {
      image_version       = var.image_ver
      optional_components = [ "ZOOKEEPER", "ZEPPELIN", "HBASE" ]
    }
  }
}
