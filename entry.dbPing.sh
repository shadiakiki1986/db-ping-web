#!/bin/bash

php bin/db-ping ODBC -d MarketflowAcc -u rou -p rou --repeat 100 --format te --delay 5000 >> /var/dbPing/MarketflowAcc.txt &
php bin/db-ping ODBC -d MarketflowAccDb -u rou -p rou --repeat 100 --format te --delay 5000 >> /var/dbPing/MarketflowAccDb.txt &
service cron start

tail -f /var/dbPing/*
