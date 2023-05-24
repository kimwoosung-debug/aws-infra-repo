module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "my-eks-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-093c5927e44c937ff"

  private_subnets = ["subnet-07e44bda9711e17b4", "subnet-0c7ad3d70e49b471f"]
  public_subnets  = ["subnet-080191401927a94df", "subnet-0fb89f61f9329e0f4"]
}