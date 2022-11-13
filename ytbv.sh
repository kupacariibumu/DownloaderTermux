cd storage/downloads
nano /data/data/com.termux/files/home/urldownload/links.txt
if ! grep -q '[^[:space:]]' /data/data/com.termux/files/home/urldownload/links.txt; then
 echo "File is Empty"
exit
else
youtube-dl -f best -a /data/data/com.termux/files/home/urldownload/links.txt --external-downloader "aria2c" --external-downloader-args "-c -s 16 -x 16 -k 1M -j 1 --max-download-limit=1M"
youtube-dl --write-auto-sub --convert-subs=srt --sub-lang id --skip-download -a /data/data/com.termux/files/home/urldownload/links.txt
truncate -s 0 /data/data/com.termux/files/home/urldownload/links.txt
exit
fi
