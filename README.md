<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>YT-DLP + FFmpeg Windows 11 Setup Guide</title>
<style>
  body { font-family: Arial, sans-serif; line-height: 1.6; margin: 20px; }
  h1, h2, h3 { color: #2c3e50; }
  code { background: #f4f4f4; padding: 2px 4px; border-radius: 4px; }
  pre { background: #0e0e0eff; padding: 10px; border-radius: 4px; overflow-x: auto; }
  ul { margin-bottom: 1em; }
</style>
</head>
<body>

<h1>📥 YT-DLP + FFmpeg Setup & .BAT Downloader (Windows 11)</h1>

<p>This guide will walk you through installing all prerequisites for <strong>YT-DLP</strong> and <strong>FFmpeg</strong> on Windows 11, verifying the installation, and creating a <code>.bat</code> file for one-click video downloads.</p>

<hr>

<h2>1️⃣ Prerequisites</h2>
<ul>
  <li>Windows 11 PC with administrator access</li>
  <li>Internet connection</li>
  <li>Basic familiarity with Command Prompt</li>
</ul>

<h3>Required Software</h3>
<ol>
  <li><strong>Python 3.11+</strong>
    <ul>
      <li>Download from: <a href="https://www.python.org/downloads/windows/">python.org</a></li>
      <li>During installation, check <strong>"Add Python to PATH"</strong></li>
    </ul>
  </li>
  <li><strong>YT-DLP</strong>
    <ul>
      <li>Will be installed via <code>pip</code> after Python is set up</li>
    </ul>
  </li>
  <li><strong>FFmpeg</strong>
    <ul>
      <li>Download from: <a href="https://github.com/BtbN/FFmpeg-Builds/releases">FFmpeg Builds</a></li>
      <li>Choose the latest <em>release full build</em> ZIP for Windows</li>
    </ul>
  </li>
</ol>

<hr>

<h2>2️⃣ Install Python</h2>
<ol>
  <li>Run the Python installer.</li>
  <li>Check <strong>"Add Python to PATH"</strong> before clicking Install.</li>
  <li>Verify installation:
    <pre>python --version
pip --version</pre>
  </li>
</ol>

<hr>

<h2>3️⃣ Install YT-DLP</h2>
<pre>pip install -U yt-dlp</pre>
<p>Verify:</p>
<pre>yt-dlp --version</pre>

<hr>

<h2>4️⃣ Install FFmpeg</h2>
<ol>
  <li>Extract the downloaded FFmpeg ZIP to <code>C:\ffmpeg</code>.</li>
  <li>Inside <code>C:\ffmpeg</code>, locate the <code>bin</code> folder (contains <code>ffmpeg.exe</code>).</li>
  <li>Copy the full path to <code>C:\ffmpeg\bin</code>.</li>
  <li>Add it to your PATH:
    <ul>
      <li>Press <kbd>Windows + S</kbd>, search "environment variables".</li>
      <li>Click <strong>Edit the system environment variables</strong>.</li>
      <li>In <strong>Environment Variables</strong>, edit the <strong>Path</strong> variable.</li>
      <li>Click <strong>New</strong> and paste <code>C:\ffmpeg\bin</code>.</li>
    </ul>
  </li>
  <li>Restart Command Prompt and verify:
    <pre>ffmpeg -version</pre>
  </li>
</ol>

<hr>

<h2>5️⃣ Test a Basic Download</h2>
<pre>yt-dlp https://www.youtube.com/watch?v=VIDEO_ID</pre>
<p>If the video downloads and plays, your setup is working.</p>

<hr>

<h2>6️⃣ Create a One-Click .BAT Downloader</h2>

<h3>MP4 Downloader</h3>
<ol>
  <li>Open Notepad.</li>
  <li>Paste the following code:</li>
</ol>

<pre>
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
</pre>

<ol start="3">
  <li>Save as <code>yt-dlp-mp4.bat</code> (Save as type: All Files).</li>
  <li>Double-click to run, paste a link, press Enter, and the video will download in MP4 format.</li>
</ol>

<h3>Optional: MP3 Downloader</h3>
<pre>
@echo off
title YT-DLP MP3 Downloader
echo =========================================
echo     YT-DLP + FFmpeg MP3 Downloader
echo =========================================
set /p url=Paste video URL: 
yt-dlp -x --audio-format mp3 --audio-quality 0 "%url%"
echo.
echo Download complete!
pause
</pre>

<p>Save as <code>yt-dlp-mp3.bat</code> for audio-only downloads.</p>

<hr>

<p><strong>✅ You now have a complete Windows 11 YT-DLP + FFmpeg setup with one-click download capability.</strong></p>

</body>
</html>
