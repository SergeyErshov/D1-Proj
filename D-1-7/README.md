## 📝 Ответ на практику D.1.7

### 📖 исходные данные:

---

1. ВМ созданы в облаке с помощью [terraform](https://github.com/SergeyErshov/D1-Proj/blob/main/D-1-6/terraform/main.tf)  
2. Для разнообразия решено попробовать использовать связку Nomad+Consul, организовав кластер из одной управляющей ноды и двух клиентов  
3. Инициализация управляющей ноды описана в [плейбуке](https://github.com/SergeyErshov/D1-Proj/blob/main/D-1-7/ansible/nomad-srv.yml)  
4. Инициализация клиентов - [плейбуке](https://github.com/SergeyErshov/D1-Proj/blob/main/D-1-7/ansible/nomad-cl.yml)  

---

### 💡 запуск магазина в nomad-кластере

---

Для начала сразу отмечу, что предоставленные в официальном [репозитории](https://github.com/SkillfactoryCoding/DEVOPS-Kubernates-user-contribs/tree/main/deploy/nomad/jobs) джобы не рабочие от слова совсем.  
Кое-что подправить удалось, но выстраить работу с сетью так, как это предполагали разработчики - нет.  
В итоге я совсем убрал разделения по подсетям.  
Также пришлось увеличивать количество памяти на на нодах, т.к. некоторые контейнеры не смогли запуститься.  

Скрин consul nodes: ![consul](https://github.com/SergeyErshov/D1-Proj/blob/main/D-1-3/raw/consul_members.png "Consul nodes")  

Worker'ы в кластере nomad: ![nomad](https://github.com/SergeyErshov/D1-Proj/blob/main/D-1-3/raw/nomad_cluster.png "Nomad cluster")  

В результате магазин запустился.  
![ishop](https://github.com/SergeyErshov/D1-Proj/blob/main/D-1-3/raw/weavedemo_run.png "Shop run")

---

### 📚 Список использованных источников:

* https://habr.com/ru/post/453322/
* https://microservices-demo.github.io/deployment/nomad.html
* https://community.hetzner.com/tutorials/install-nomad-consul-cluster
* https://developer.hashicorp.com/nomad/docs/drivers/raw_exec
* https://developer.hashicorp.com/nomad/tutorials/manage-clusters/clustering
