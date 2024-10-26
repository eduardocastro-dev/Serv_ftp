#!/bin/bash
#-----usuarios no SO
while read p; do
  userdel -f "$p"
done <usuario.txt
#-----Desdruir pasta /var/www/html/
while read p; do
 rm -R /var/www/html/"$p"
 rm -R /home/"$p"
done <usuario.txt
