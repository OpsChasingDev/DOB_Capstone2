provider "kubernetes" {
  host                   = data.aws_eks_cluster.myapp-cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.myapp-cluster.certificate_authority.0.data)
  token                  = data.aws_eks_cluster_auth.myapp-cluster.token
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.5.1"

  cluster_name    = "myapp-eks-cluster"
  cluster_version = "1.25"

  # network for the worker nodes to start in - the workload
  # private subnets as an array
  subnet_ids = module.myapp-vpc.private_subnets
  vpc_id     = module.myapp-vpc.vpc_id

  tags = {
    environment = "dev"
    application = "myapp"
  }

  eks_managed_node_groups = {
    dev = {
      min_size     = 1
      max_size     = 3
      desired_size = 3

      instance_types = ["t2.small"]
    }
  }
}