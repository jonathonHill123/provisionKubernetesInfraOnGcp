variable "project" {}

resource "google_compute_global_address" "static-ip" {
  name = "${var.project}"
}

resource "google_dns_record_set" "record" {
  name = "${var.project}.com."
  type = "A"
  ttl  = 300

  managed_zone = "${var.project}"
  rrdatas = ["${google_compute_global_address.static-ip.address}"]
}
