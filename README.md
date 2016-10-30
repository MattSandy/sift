# sift::r

Sifts through an R data dataframe by dynamically creating frequency tables in a web interface.

```
devtools::install_github("MattSandy/sift")
sift::r(mtcars)
```

If you are not using this locally, you can change the IP and port of the websocket that this connects to.

```
sift::r(mtcars,ip="192.168.0.4",port="9090")
```

## Select Columns (I don't recommend going about 2 if there are many unique values)
![alt tag](http://sift.rlang.io/table/github/columns.png)

## View Table
![alt tag](http://sift.rlang.io/table/github/table.png)

## Filter Table

If you want, you can even filter the table by only including rows from a specific column value.
![alt tag](http://sift.rlang.io/table/github/filter.png)

## Enjoy :)