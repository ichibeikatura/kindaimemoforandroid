#!/bin/sh
sDateName=`date +"%Y-%m-%d %H:%M:%S:"`
sbook=`sqlite3 ~/storage/shared/PerfectViewer/perfectviewer.db "select full_path from bookhistory where book_index=(select max(book_index) from bookhistory) ;" | awk -F'[/]' '{print $7}' | sed s/.zip// |sed "s/_/ /g"`
echo -n $sbook"\n"$sDateName >> ~/storage/shared/Documents/memo/readkindai_memo.txt
