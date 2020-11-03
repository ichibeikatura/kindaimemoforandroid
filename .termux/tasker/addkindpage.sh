#!/bin/sh
spage=`sqlite3 ~/storage/shared/PerfectViewer/perfectviewer.db "select read_page from bookhistory where book_index=(select max(book_index) from bookhistory) ;"`
echo -n p$spage >> ~/storage/shared/Documents/memo/readkindai_memo.txt
