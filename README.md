### Задание 1
Установите Zabbix Server с веб-интерфейсом.

Процесс выполнения

Выполняя ДЗ, сверяйтесь с процессом отражённым в записи лекции.

Установите PostgreSQL. Для установки достаточна та версия, что есть в системном репозитороии Debian 11.

Пользуясь конфигуратором команд с официального сайта, составьте набор команд для установки последней версии Zabbix с поддержкой PostgreSQL и Apache.

Выполните все необходимые команды для установки Zabbix Server и Zabbix Web Server.

Требования к результаты

Прикрепите в файл README.md скриншот авторизации в админке.

Приложите в файл README.md текст использованных команд в GitHub.
![Screenshot_18](https://github.com/user-attachments/assets/1aa76110-ebfd-4d73-ac2b-a2f1b1456c02)

![Screenshot_19](https://github.com/user-attachments/assets/b64103a7-4511-46b7-9b33-42491e8bfdac)

![Screenshot_20](https://github.com/user-attachments/assets/68ed83c6-4df3-4db8-aa9b-a22c9320677f)

### Задание 2 

Установите Zabbix Agent на два хоста.

#### Процесс выполнения
1. Выполняя ДЗ, сверяйтесь с процессом отражённым в записи лекции.
2. Установите Zabbix Agent на 2 вирт.машины, одной из них может быть ваш Zabbix Server.
3. Добавьте Zabbix Server в список разрешенных серверов ваших Zabbix Agentов.
4. Добавьте Zabbix Agentов в раздел Configuration > Hosts вашего Zabbix Servera.
5. Проверьте, что в разделе Latest Data начали появляться данные с добавленных агентов.

#### Требования к результаты 
1. Приложите в файл README.md скриншот раздела Configuration > Hosts, где видно, что агенты подключены к серверу
   ![Screenshot_22](https://github.com/user-attachments/assets/8306c5b7-bcf3-4db7-b01e-e9c24d69367e)
3. Приложите в файл README.md скриншот лога zabbix agent, где видно, что он работает с сервером
   ![Screenshot_26](https://github.com/user-attachments/assets/32c9ed6f-087e-42c3-8d64-1b66c5f3fad0)
   ![Screenshot_24](https://github.com/user-attachments/assets/947ea9fa-f96b-4b8c-94ed-a2def212cb52)

5. Приложите в файл README.md скриншот раздела Monitoring > Latest data для обоих хостов, где видны поступающие от агентов данные.
   ![Screenshot_28](https://github.com/user-attachments/assets/160ebb36-69ed-459e-80e0-ac8dca49628f)


---
## Задание 3 со звёздочкой*
Установите Zabbix Agent на Windows (компьютер) и подключите его к серверу Zabbix.

#### Требования к результаты 
1. Приложите в файл README.md скриншот раздела Latest Data, где видно свободное место на диске C:
![Screenshot_28](https://github.com/user-attachments/assets/fb607493-2fa2-47fe-874b-678d33c80c6d)

