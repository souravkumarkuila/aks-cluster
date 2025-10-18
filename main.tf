module "rg" {
  source      = "./rg"
  rg_name     = var.rg_name
  rg_location = var.rg_location
}

module "aks_cluster" {
  source      = "./aks"
  rg_name     = var.rg_name
  rg_location = var.rg_location
  depends_on  = [module.rg]

}