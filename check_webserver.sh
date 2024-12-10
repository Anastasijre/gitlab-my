#!/bin/bash

# Адрес веб-сервера и порт
SERVER="192.168.2.150"
PORT="80"
# Путь к файлу index.html на веб-сервере
FILE_PATH="/var/www/html/index.nginx-debian.html"

# Проверка доступности порта веб-сервера
if nc -z $SERVER $PORT; then
    echo "Порт $PORT на сервере $SERVER доступен."
else
    echo "Порт $PORT на сервере $SERVER не доступен."
    exit 1
fi

# Проверка существования файла index.html
# Предполагается, что скрипт запускается на самом веб-сервере
if [ -f "$FILE_PATH" ]; then
    echo "Файл $FILE_PATH существует."
else
    echo "Файл $FILE_PATH не существует."
    exit 2
fi

exit 0