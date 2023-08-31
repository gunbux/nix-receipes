#!/bin/sh

pg_ctl -D .tmp/mydb stop
rm -rf .tmp
rm logfile
