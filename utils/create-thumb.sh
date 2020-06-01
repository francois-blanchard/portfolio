#!/bin/bash

#
# Exemple of usage
# ./create-thumb.sh ../assets/img/portfolio
#

for file in $(ls -1 $1 | grep .jpg)
do
  file_name=$(echo $file | cut -d'.' -f1);
  convert $1/$file -quality 80% -resize 400x400\> $1/$file_name-thumb.jpg;
done;

ls -1 $1
