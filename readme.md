# CSV Kit

This is a simple docker wrapper for csvkit. Alias the command to run through docker.

```
# use csvkit to generate sql from csv
alias csvsql='docker run --rm -i \
  sammerry/csvkit /usr/local/bin/csvsql'

# use csvkit to convert to csv
alias in2csv='docker run --rm -i \
  sammerry/csvkit /usr/local/bin/in2csv'

# use csvkit to convert csv to json
alias csvjson='docker run --rm  -i \
  sammerry/csvkit /usr/local/bin/csvjson'
```

rather than accessing the files directly. You'll have to pipe in/out

ex:
```
head bureau.csv -n 100 | csvsql --no-constraints
```


