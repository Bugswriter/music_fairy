#!/bin/bash
YT_DLP=$(which yt-dlp)
if [ -z $YT_DLP ]
then
    pip install yt-dlp --break-system-packages
fi
mkdir ~/.local/share/music_fairy
mkdir ~/.local/share/music_fairy/playlist
cp ./func.lib ~/.local/share/music_fairy
cp ./music-fairy ~/.local/bin
