nano DownloaderTermux/urldownload/d.txt
aria2c -s 16 -x 16 -i DownloaderTermux/urldownload/d.txt -d storage/downloads
truncate -s 0 DownloaderTermux/urldownload/d.txt
exit