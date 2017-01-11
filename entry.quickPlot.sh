#!/bin/bash

bin/quick_plot /var/dbPing/MarketflowAcc.txt --mode scatter --markersize 7.0 --out_format png --out /var/dbPing/MarketflowAcc.png --title '2D scatter data from example/data_2d_1.txt' --xlabel 'The x-axis' --ylabel 'The y-axis' --no_legend
bin/quick_plot /var/dbPing/MarketflowAccDb.txt --mode scatter --markersize 7.0 --out_format png --out /var/dbPing/MarketflowAccDb.png --title '2D scatter data from example/data_2d_1.txt' --xlabel 'The x-axis' --ylabel 'The y-axis' --no_legend
