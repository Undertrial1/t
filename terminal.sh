#!/bin/bash

# Получение IP-адреса хоста
host_ip=$(hostname -I)

# Проверка количества аргументов
if [ "$#" -ne 0 ]; then
    exit 1
fi

# Присвоение IP-адреса переменной client_id
client_id=$host_ip
server_url="https://network.phpteam.pp.ua/update"

# Бесконечный цикл
while true; do
    # Выполнение POST-запроса без вывода
    curl -s -o /dev/null -X POST -d "id=$client_id" "$server_url"

    # Ожидание 1 секунду
    sleep 1
done