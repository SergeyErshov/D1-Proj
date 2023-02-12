## 📝 Ответ на практику D.1.3

### 🔖 подготовка окружения:

---

1. ВМ созданы в облаке с помощью [terraform](https://github.com/SergeyErshov/D1-Proj/blob/main/D-1-3/terraform/main.tf)  
2. Необходимые пакеты установлены на все ноды с помощью [ansible-playbook](https://github.com/SergeyErshov/D1-Proj/blob/main/D-1-3/ansible/docker.yml)
3. Инициализация docker swarm и добавление workers в этом [плейбуке](https://github.com/SergeyErshov/D1-Proj/blob/main/D-1-3/ansible/docker-swarm.yml)
4. Подправленный [docker-compose.yml](https://github.com/SergeyErshov/D1-Proj/blob/main/D-1-3/ansible/config/docker-compose.yml)

---

### 💡 работа с docker swarm

---

Деплой docker-compose выполнен командой:  
```
docker stack deploy -c ./docker-compose.yml ishop
```
Скрин работающего магазина: ![ishop](https://github.com/SergeyErshov/D1-Proj/blob/main/D-1-3/raw/browser_screen.png "Market")

docker node ls: ![docker node ls](https://github.com/SergeyErshov/D1-Proj/blob/main/D-1-3/raw/docker_node_ls.png "docker node ls")

docker service ls: ![docker service ls](https://github.com/SergeyErshov/D1-Proj/blob/main/D-1-3/raw/docker_service_ls.png "docker service ls")

Масштабирование frontend выполнено командой:  
```
docker service scale ishop_front-end=2
``` 

В результате ![docker service ps](https://github.com/SergeyErshov/D1-Proj/blob/main/D-1-3/raw/ishop_front_end.png "Docker service ps")

---

### 📚 Список использованных источников:

* https://docs.docker.com/engine/swarm/swarm-tutorial/  
* https://github.com/kksudo/microservices-demo/tree/user-contribs/deploy/docker-compose
* https://medium.com/@cantrobot/deploying-docker-swarm-with-ansible-a991c1028427
* https://docs.docker.com/compose/compose-file/compose-file-v3/
* https://docs.docker.com/engine/reference/commandline/stack_deploy/
