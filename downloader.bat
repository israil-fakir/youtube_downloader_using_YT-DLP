@echo off
title Youtube Video Downloader
echo =========================================
echo     Free Video Downloader 
echo =========================================
set /p url=Paste video URL: 
yt-dlp -S res,ext:mp4:m4a --recode-video mp4 "%url%"
echo.
echo Download complete!
pause