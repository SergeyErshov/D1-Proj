module "yandex_instance_1" {
  source                = "./modules/create_vm"
  disk_name             = "sys-standalone"
  disk_size             = "30"
  disk_type             = "network-hdd"
  cores                 = "2"
  memory                = "4"
  instance_family_image = "ubuntu-2204-lts"
  instance_subnet_name  = "a-ru-central1-a"
  instance_name         = "standalone-vm"
  instance_desc         = "Local server for internet market"
  zone_name             = "ru-central1-a"
  core_fract            = "20"
  nat                   = "true"
}


