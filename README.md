# db-ping-web
Graphing of data outputted from [db-ping](https://github.com/shadiakiki1986/db-ping/shadi_add_sqlserver_driver) using [quick_plot](https://github.com/dentearl/quick_plot/)

# Status
The point of this was to automatically convert the `db-ping` text output to png and serve it

I couldnt get `quick_plot` to work with the `python:alpine` docker image.
The python [page](https://hub.docker.com/_/python/) on docker hub had warned about this.
The last error I hit was `missing BLAS/LAPACK`, which would be solved using http://stackoverflow.com/a/38571314/4126114
by adding `apk add lapack-dev` from the alpine testing repository, but it didn't work using `python:alpine`.
(note how the solution uses `alpine:latest`)
I stopped at this point, as I had other things to do at the time of this writing.


Having said this, my current use of this repository is limited to

```bash
cp /etc/odbc* etc
docker-compose up -d db_ping
```

which starts outputting `db-ping` text file output at `/var/dbPing/*txt` files, which suffices for my current purposes
