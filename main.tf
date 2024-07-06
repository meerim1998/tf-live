provider "aws" {
  region = us-east-1
}  

module "eks" {
  source = "github.com/meerim1998/tf-modules//eks"

  region                    = "us-east-1"
  cluster_name              = "my-eks-cluster"
  subnet_ids                = ["subnet-0f798a592c6b368cd", "subnet-0a57d37ffce7cdb09"]
  node_group_name           = "primary"
  node_count                = 3
  max_size                  = 5
  min_size                  = 2
  instance_type             = "t2.micro"
  disk_size_gb              = 20
  source_security_group_id  = "sg-00448e27b5c6f1f8e"
}
