<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">

</head>
<body>

<h1>📥 Youtube Videos Donloader Setup Guide (Windows 11)</h1>

<p>This guide walks you through installing <strong>YT-DLP</strong> and <strong>FFmpeg</strong> on Windows 11 and verifying the installation.</p>

<p>With this setup, you can now download both <strong>single YouTube videos</strong> and <strong>entire playlists</strong> in MP4 format.</p>

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
  <li>Verify installation:</li>
</ol>
<pre>python --version
pip --version</pre>

<hr>

<h2>3️⃣ Install YT-DLP</h2>
<pre>pip install -U yt-dlp
yt-dlp --version</pre>

<hr>

<h2>4️⃣ Install FFmpeg</h2>
<ol>
  <li>Download from: <a href="https://github.com/BtbN/FFmpeg-Builds/releases">FFmpeg </a></li>
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
  <li>Restart Command Prompt and verify:</li>
</ol>
<pre>ffmpeg -version</pre>

<hr>
 
<h2>▶️ How to Run</h2>
<h4> After successfully completing the setup, you can download <strong>videos</strong> or <strong>entire playlists</strong> from YouTube.</h4>
<ol>
  <li>Make sure Python, YT-DLP, and FFmpeg are installed and working (see setup steps above).</li>
 
  <li>Double-click the <code>downloader.bat</code> file.</li>
  <li>When prompted:
    <ul>
      <li>Paste a <strong>single YouTube video URL</strong> to download just that video.</li>
      <li>Paste a <strong>playlist URL</strong> to download all videos in the playlist.</li>
    </ul>
  </li>
  <li>Wait for the download(s) to complete — the MP4 files will appear in the same folder.</li>
  <li>To cancel Press:
       <ul>
      <li>Ctrl + c</li>
      <li>Terminate processs (Y/N)?</li>
      <ul>
      <li>Y - to cancel</li>
      <li>N - to continue</li>
      </ul>
    </ul>
  </li>

  <li>Download complete! Press any key to exit.</li>
</ol>

</body>
</html>
