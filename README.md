# db-ping-web
Graphing of data outputted from [db-ping](https://github.com/shadiakiki1986/db-ping/shadi_add_sqlserver_driver) using [quick_plot](https://github.com/dentearl/quick_plot/)

## Usage

1. Start `db_ping` and save its output to `/var/dbPing/*txt`

```bash
cp /etc/odbc* etc
docker-compose up -d db_ping
```

2. To look for delays longer than 99 ms, use [awk](http://serverfault.com/a/355325/394721):
`cat MarketflowAccDb.txt |grep -v "DB-PING"|awk '{ if (length($0) > 23) print }'`

3. To convert the file to a plot,
copy the file,
remove the `DB-PING` header lines,
and do: `docker-compose run quick_plot`
