locals {
  resource_name_prefix = "${var.project}-${var.environment}"
  azs = ["${var.region}a", "${var.region}b", "${var.region}c"]
}
