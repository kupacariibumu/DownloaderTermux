cd storage/downloads
nano /data/data/com.termux/files/home/DownloaderTermux/urldownload/links.txt
if ! grep -q '[^[:space:]]' /data/data/com.termux/files/home/DownloaderTermux/urldownload/links.txt; then
 echo "File is Empty"
exit
else
youtube-dl -f best -a /data/data/com.termux/files/home/DownloaderTermux/urldownload/links.txt --external-downloader "aria2c" --external-downloader-args "-s 16 -x 16"
youtube-dl --write-auto-sub --convert-subs=srt --sub-lang id --skip-download -a /data/data/com.termux/files/home/DownloaderTermux/urldownload/links.txt
truncate -s 0 /data/data/com.termux/files/home/DownloaderTermux/urldownload/links.txt
exit
fi