# db-ping-web
Graphing of data outputted from [db-ping](https://github.com/shadiakiki1986/db-ping/shadi_add_sqlserver_driver) using [quick_plot](https://github.com/dentearl/quick_plot/)

The point of this was to automatically convert the `db-ping` text output to png and serve it

I couldnt get `quick_plot` to work with the `python:alpine` docker image.
The last error I hit was `missing BLAS/LAPACK`, which would be solved using http://stackoverflow.com/a/38571314/4126114
by adding `apk add lapack-dev` from the alpine testing repository, but it didn't work using `python:alpine`.
(note how the solution uses `alpine:latest`)
I stopped at this point, as I had other things to do at the time of this writing
