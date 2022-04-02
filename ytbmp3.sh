#!/bin/bash
cd storage/music
nano /data/data/com.termux/files/home/DownloaderTermux/urldownload/urlytbmp3.txt
if ! grep -q '[^[:space:]]' /data/data/com.termux/files/home/DownloaderTermux/urldownload/urlytbmp3.txt; then
 echo "File is Empty"
exit
else
youtube-dl --extract-audio --audio-format mp3 -a /data/data/com.termux/files/home/DownloaderTermux/urldownload/urlytbmp3.txt --external-downloader "aria2c" --external-downloader-args "-s 16 -x 16"
truncate -s 0 /data/data/com.termux/files/home/DownloaderTermux/urldownload/urlytbmp3.txt
exit
fi