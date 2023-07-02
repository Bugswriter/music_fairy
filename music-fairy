#!/bin/sh

# Dependencies
# yt-dlp
# python
# python-pip
# wget
# ffmpeg
# mpv


MODEL_PATH="$HOME/.local/share/musicfairy"
INVIDIOUS_INSTANCE="https://vid.puffyan.us"

if [ -d "$MODEL_PATH" ]; then
    # take mic input
    ffmpeg -y -f alsa -i default -acodec pcm_s16le -ac 1 -ar 44100 -t 4 -f wav $HOME/.cache/audio.wav

    # convert it into text & store it in `audio_input`
    saveCWD=$(echo "$pwd")
    cd $MODEL_PATH
    whisper $HOME/.cache/audio.wav --model_dir "$MODEL_PATH" --task transcribe
    read audio_input < $MODEL_PATH/audio.txt
    rm audio.vtt audio.txt audio.tsv audio.json audio.srt
    rm $HOME/.cache/audio.wav
    cd "$saveCWD"


    # make youtube search query
    query="$(printf '%s' "song audio $audio_input" | tr ' ' '+' )"

    # search on invidous (youtube) instance for video id to make a url
    video_id="$(curl -s "$INVIDIOUS_INSTANCE/search?q=$query" | grep -Eo "watch\?v=.{11}" | head -n 1)"
    youtube_url="https://youtube.com/$video_id"

    # get url for bestaudio stream from the youtube video
    audio_url="$(yt-dlp -f bestaudio --get-url "$youtube_url")"

    # add the track to mpd and play
    mpv "$audio_url"

    # Get youtube video title for system notification
    title=$(yt-dlp --get-title "$youtube_url")
    notify-send "Playing: " "$title"
else
    # Install Dependencies for the first time
    rm -rf "$MODEL_PATH"
    pip install git+https://github.com/openai/whisper.git
    mkdir -p "$MODEL_PATH"
    wget "https://openaipublic.azureedge.net/main/whisper/models/9ecf779972d90ba49c06d968637d720dd632c55bbf19d441fb42bf17a411e794/small.pt" -O $MODEL_PATH/small.pt
    echo "Model Downloaded! Run Script again to start listening to music!"
fi
