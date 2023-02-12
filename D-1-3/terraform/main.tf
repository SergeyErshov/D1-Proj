module "yandex_instance_1" {
  source                = "./modules/create_vm"
  disk_name             = "sys-manager1"
  disk_size             = "25"
  disk_type             = "network-hdd"
  cores                 = "2"
  memory                = "2"
  instance_family_image = "ubuntu-2204-lts"
  instance_subnet_name  = "a-ru-central1-a"
  instance_name         = "manager1"
  instance_desc         = "Docker Swarm manager 01"
  hostname              = "manager01"
  zone_name             = "ru-central1-a"
  core_fract            = "20"
  nat                   = "true"
}

module "yandex_instance_2" {
  source                = "./modules/create_vm"
  disk_name             = "sys-worker1"
  disk_size             = "20"
  disk_type             = "network-ssd"
  cores                 = "2"
  memory                = "4"
  instance_family_image = "ubuntu-2204-lts"
  instance_subnet_name  = "a-ru-central1-a"
  instance_name         = "worker1"
  instance_desc         = "Docker worker 01"
  hostname              = "worker01"
  zone_name             = "ru-central1-a"
  core_fract            = "20"
  nat                   = "true"
}

module "yandex_instance_3" {
  source                = "./modules/create_vm"
  disk_name             = "sys-worker2"
  disk_size             = "20"
  disk_type             = "network-ssd"
  cores                 = "2"
  memory                = "4"
  instance_family_image = "ubuntu-2204-lts"
  instance_subnet_name  = "a-ru-central1-a"
  instance_name         = "worker2"
  instance_desc         = "Docker worker 02"
  hostname              = "worker02"
  zone_name             = "ru-central1-a"
  core_fract            = "20"
  nat                   = "true"
}


