@echo off
title YT-DLP Video Downloader
echo =========================================
echo     YT-DLP + FFmpeg MP4 Downloader
echo =========================================
set /p url=Paste video URL: 
yt-dlp -S res,ext:mp4:m4a --recode-video mp4 "%url%"
echo.
echo Download complete!
pause