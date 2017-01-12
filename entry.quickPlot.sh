#!/bin/bash

# SO: Loop through array of strings in bash script?
# http://stackoverflow.com/a/8880633/4126114
declare -a arr=("MarketflowAcc-pro.txt") # "MarketflowAccDb.txt")
## now loop through the above array
for i in "${arr[@]}"
do
  pew in QUICK_PLOT \
    bin/quick_plot /var/dbPing/$i \
      --mode scatter \
      --markersize 3.0 \
      --out_format png \
      --out $i \
      --title 'MF performance' \
      --xlabel 'timestamp' \
      --xtick_label_column 1 \
      --ylabel 'execution time (ms)' \
      --no_legend \
      --columns 3
done
