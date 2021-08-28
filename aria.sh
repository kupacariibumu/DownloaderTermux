nano urldownload/d.txt
aria2c -s 16 -x 16 -i urldownload/d.txt -d storage/downloads
truncate -s 0 urldownload/d.txt
exit