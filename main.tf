module "eks" {
  source = "github.com/meerim1998/tf-modules//eks"

  region                    = var.region
  cluster_name              = var.cluster_name
  subnet_ids                = var.subnet_ids
  node_group_name           = var.node_group_name
  node_count                = var.node_count
  max_size                  = var.max_size
  min_size                  = var.min_size
  instance_type             = var.instance_type
  disk_size_gb              = var.disk_size_gb
  source_security_group_id  = var.source_security_group_id
}
