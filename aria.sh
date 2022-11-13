nano urldownload/d.txt
aria2c -c -s 16 -x 16 -k 1M -j 1 --max-download-limit=1M -i urldownload/d.txt -d storage/downloads
#truncate -s 0 urldownload/d.txt
exit
