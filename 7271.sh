#!/bin/bash
pwd
echo "Input file's name"
read filename
finding=`find $filename`
echo "$finding"
while [ "$finding" != "$filename" ]
do
  echo "Input file's name again"
  read filename
  finding=`find $filename`
 done
 echo "Input username"
 read username
 whoami;
  sudo su $username << BASH
  ls -l "$filename"
 whoami;
 BASH
 exit;
