### Disaster recovery и Keepalived - Резникова Анастасия

### Задание 1

Задание 1
Дана схема для Cisco Packet Tracer, рассматриваемая в лекции.
На данной схеме уже настроено отслеживание интерфейсов маршрутизаторов Gi0/1 (для нулевой группы)
Необходимо аналогично настроить отслеживание состояния интерфейсов Gi0/0 (для первой группы).
Для проверки корректности настройки, разорвите один из кабелей между одним из маршрутизаторов и Switch0 и запустите ping между PC0 и Server0.

https://github.com/Anastasijre/gitlab-my/blob/ce1b435e823ecafc2c3594b415e68f7e04be8e3b/hsrp_advanced1.pkt
![Screenshot_10](https://github.com/user-attachments/assets/6477738c-406a-42c5-a7aa-d0113ce1909e)
![Screenshot_9](https://github.com/user-attachments/assets/4987dd1a-8c33-4607-8f46-d747f5f38a51)

---

### Задание 2
Запустите две виртуальные машины Linux, установите и настройте сервис Keepalived как в лекции, используя пример конфигурационного файла.
Настройте любой веб-сервер (например, nginx или simple python server) на двух виртуальных машинах
Напишите Bash-скрипт, который будет проверять доступность порта данного веб-сервера и существование файла index.html в root-директории данного веб-сервера.
Настройте Keepalived так, чтобы он запускал данный скрипт каждые 3 секунды и переносил виртуальный IP на другой сервер, если bash-скрипт завершался с кодом, отличным от нуля (то есть порт веб-сервера был недоступен или отсутствовал index.html). Используйте для этого секцию vrrp_script
На проверку отправьте получившейся bash-скрипт и конфигурационный файл keepalived, а также скриншот с демонстрацией переезда плавающего ip на другой сервер в случае недоступности порта или файла index.html

![Screenshot_17](https://github.com/user-attachments/assets/f4282369-286d-48d0-ba86-8778f193c77c)
![Screenshot_15](https://github.com/user-attachments/assets/ea2bd470-2b27-4baf-822f-0866e9aad674)
![Screenshot_16](https://github.com/user-attachments/assets/15adfa53-04fa-469f-a863-7f227518a360)

https://github.com/Anastasijre/gitlab-my/blob/557f5bfa7e42f863aeda79f05d34da30f78c7781/keepalived.conf
https://github.com/Anastasijre/gitlab-my/blob/557f5bfa7e42f863aeda79f05d34da30f78c7781/check_webserver.sh

keepalived.conf

global_defs {
    enable_script_security
}
vrrp_script chk_webserver {
    script "/home/test2/check_webserver.sh"
    interval 3
    weight -10
}

vrrp_instance VI_1 {
        state BACKUP
        interface enp0s3
        virtual_router_id 15
        priority 195
        advert_int 1
        authentication {
               auth_type PASS
               auth_pass 12345678
        }
        virtual_ipaddress {
              192.168.2.150/22
        }
       track_script {
              chk_webserver
        }
}


