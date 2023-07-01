# Music Fairy

Music Fairy is a script that utilizes speech recognition to play any song audio in MPD (Music Player Daemon). It uses YouTube as a source to fetch music and integrates with various libraries and tools to provide a seamless music playback experience.

## Installation

To install Music Fairy, follow these steps:

1. Clone the repository from GitHub: [github.com/bugswriter/music_fairy](https://github.com/bugswriter/music_fairy)

2. Copy the `music-fairy` script into `~/.local/bin` on your system.

3. Install the required Python packages by running the following commands:

```
pip3 install vosk
pip3 install google_speech
```

4. Ensure that `ffmpeg` is installed on your system.

5. Download the Vosk model from [alphacephei.com/vosk/models](https://alphacephei.com/vosk/models). It is recommended to download the lighter model with a smaller file size.

6. Put the model directory in `~/.local/share/music_fairy/`, or change the `VOSK_MODEL_PATH` variable to the path where you downloaded the Vosk model.

7. Bind Music Fairy to a specific key using your system's keybinding configuration.

## Usage

Once installed and configured, you can use Music Fairy to play songs by following these steps:

1. Activate the speech recognition by pressing the bound key.

2. Speak the name of the song or artist you want to play.

3. Music Fairy will fetch the audio from YouTube and play it using MPD.

4. Enjoy your music!

Please note that a working internet connection is required for Music Fairy to fetch music from YouTube.

## License
- GPL-3

## Support
- [https://bugswriter.com/donate](Checkout my donate page)
