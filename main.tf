resource "google_compute_instance_group" "this" {
  name      = "${var.application}-${var.FLAVOR}"
  zone     = element(var.zones, 0)
  instances = module.reprting.self_link
  project   = var.project_id
}
