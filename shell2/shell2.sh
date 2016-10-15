#!/bin/bash

grep -n '<div class="command">\|<div class="num-votes"' |
  cut -d\> -f2 |
   cut -d\< -f1 |
     awk 'ORS=NR%2?" ":"\n"' |
      awk '{if($NF>4){print}}' |
       awk '{$NF="";print}'