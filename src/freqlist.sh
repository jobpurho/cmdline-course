#! /bin/bash

cat $1 |
tr -s '[:space:]' '\n' |
tr -s '[:upper:]' '[:lower:]' |
tr -d '[:punct:]' |
sort | 
uniq -c | 
sort -nr > $2
