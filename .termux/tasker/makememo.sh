#!/bin/sh
sMemoDate=`date +%Y_%m_%d_%H_%M_%S`
sDateName=`date +"%Y-%m-%d %H:%M"`
echo -n $sDateName"\n#title:" > ~/$sMemoDate".txt"
mv /data/data/com.termux/files/home/20* /data/data/com.termux/files/home/storage/shared/Documents/memo
