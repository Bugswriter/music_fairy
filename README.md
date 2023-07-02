# Music Fairy

Music Fairy is a script that utilizes speech recognition to play any song audio in MPV. It uses YouTube as a source to fetch music and integrates with various libraries and tools to provide a seamless music playback experience.

## Features

<b>Uses Open-AI's Whisper (High Accuracy Speech Recognition)</b>

## Dependecies

-   yt-dlp
-   python
-   python-pip
-   wget
-   ffmpeg
-   mpv

## Installation

Install In One Go:

```
    git clone https://github.com/bugswriter/music_fairy
    cd music_fairy
    cp -r ./music-fairy ~/.local/bin/
    chmod +x ~/.local/bin/music-fairy

    pip install git+https://github.com/openai/whisper.git
    mkdir -p $HOME/.local/share/musicfairy
    wget "https://openaipublic.azureedge.net/main/whisper/models/9ecf779972d90ba49c06d968637d720dd632c55bbf19d441fb42bf17a411e794/small.pt" -O $HOME/.local/share/musicfairy/small.pt
    echo "Model Downloaded! Run Script again to start listening to music!"

    cd ..
    rm -rf music_fairy
```

## HOW TO DOWNLOAD BETTER MODEL

Download the OpenAI Whisper model by using below snippet. It is recommended to download the lighter model with a smaller file size.

https://github.com/openai/whisper <b>(DOWNLOAD WITH RESPECT TO YOUR AVAILABE VRAM SIZE)</b>

```py
import sys
from whisper import _download, _MODELS

models = ["tiny.en", "tiny", "base.en", "base", "small.en", "small", "medium.en", "medium", "large"]

for model in models:
    _download(_MODELS["medium"], "~/.local/share/musicfairy", False)

```

## Usage

Once installed and configured, you can use Music Fairy to play songs by following these steps:

1. Activate the speech recognition by pressing the bound key.

2. Speak the name of the song or artist you want to play.

3. Music Fairy will fetch the audio from YouTube and play it using MPV.

4. Enjoy your music!

Please note that a working internet connection is required for Music Fairy to fetch music from YouTube.

## License

-   GPL-3

## Support

-   Checkout my donate page - [bugswriter.com/donate](https://bugswriter.com/donate)
