#!/bin/bash


#cat ./challenges/shell1/group |
grep  -v ':$' |
cut -d: -f4 |
tr -cs "[a-z][A-Z][0-9]" "\n"|
  sort -r |
    uniq -c |
      sort -nr