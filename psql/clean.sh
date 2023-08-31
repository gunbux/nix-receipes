#!/bin/sh

pg_ctl -D .tmp/mydb stop
rm -rf .tmp
rm logfile

mkdir -p .tmp
initdb -D .tmp/mydb
pg_ctl -D .tmp/mydb -l logfile -o "--unix_socket_directories='$PWD'" start
createdb mydb -h 127.0.0.1 &
