#!/bin/bash

path="/home/${USER}/data"

if [ -e "$path" ];then
    echo "files already in $path"
else
    mkdir -p /home/${USER}/data /home/${USER}/data/mariadb /home/${USER}/data/wordpress
    echo "---Files done---"
fi