variable "region" {
  description = "The AWS region to deploy the EKS cluster in."
  type        = string
}

variable "cluster_name" {
  description = "The name of the EKS cluster."
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs for the EKS cluster."
  type        = list(string)
}

variable "node_group_name" {
  description = "The name of the node group."
  type        = string
}

variable "node_count" {
  description = "The desired number of worker nodes."
  type        = number
  default     = 3
}

variable "max_size" {
  description = "The maximum number of worker nodes."
  type        = number
  default     = 5
}

variable "min_size" {
  description = "The minimum number of worker nodes."
  type        = number
  default     = 2
}

variable "instance_type" {
  description = "The instance type for the worker nodes."
  type        = string
  default     = "t3.medium"
}

variable "disk_size_gb" {
  description = "The size of the EBS volumes attached to each node."
  type        = number
  default     = 20
}

variable "ec2_ssh_key" {
  description = "The name of the SSH key pair to use for accessing the nodes."
  type        = string
}

variable "source_security_group_id" {
  description = "The ID of the security group to allow SSH access from."
  type        = string
}

