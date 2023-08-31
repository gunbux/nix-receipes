#!/bin/sh

pg_ctl -D .tmp/mydb -l logfile -o "--unix_socket_directories='$PWD'" start &
createdb mydb -h 127.0.0.1 &

