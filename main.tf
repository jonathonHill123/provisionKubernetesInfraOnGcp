terraform {
  backend "gcs" {
    credentials = "/infra/gcp-key.json"
    bucket = "terraform-PROJECT_PLACEHOLDER"
    # path = "provided at runtime"
  }
}

variable "cluster_name" {}
variable "project" {}

provider "google" {
  version = "~> 1.0"
  project = "${var.project}"
}

module "dns" {
  source = "modules/dns"
  project = "${var.project}"
}

module "cluster" {
  source = "modules/cluster"
  cluster_name = "${var.cluster_name}"
}
