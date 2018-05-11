#!/bin/bash
A=`sed -n '/bash$/s/:.*//p' /etc/passwd`
for i in $A; do pass=`grep "$i" /etc/shadow`; pass1=${pass#*:}; pass2=${pass1%%:*};  echo "$i  $pass2"; done
