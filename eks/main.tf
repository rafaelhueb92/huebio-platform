module "eks_poc" {
  source = "git::https://github.com/rafaelhueb92/terraform-module-eks-poc.git?ref=master"

  cluster_name = "huebio-platform"

  install_argocd = true
  install_irsa = true

}