resource "random_string" "suffix" {
  length  = 8
  special = false
}

module "stack" {
  source       = "../modules/bootstrap"
  cluster_name = var.cluster_name
  github_token = var.github_token
}
