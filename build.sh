#! /bin/sh

python3 -m pip install -U nuitka

mkdir youtube-dl
cd youtube-dl

mkdir binaries

git clone https://github.com/ytdl-org/youtube-dl.git
cd youtube-dl
cd youtube_dl

python3 -m nuitka --follow-imports __main__.py
mv "__main__.bin" ../../binaries/youtube_dl-linux

cd ../../binaries
curl https://github.com/ytdl-org/youtube-dl/releases/download/2021.12.17/youtube-dl.exe -o youtube_dl-windows.exe
