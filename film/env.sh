# source this before any hyperframes command: `source film/env.sh`
FILM_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export HYPERFRAMES_FFMPEG_PATH="$FILM_DIR/node_modules/ffmpeg-static/ffmpeg"
export HYPERFRAMES_FFPROBE_PATH="$FILM_DIR/node_modules/ffprobe-static/bin/linux/x64/ffprobe"
export HYPERFRAMES_BROWSER_PATH="$(ls -d /opt/pw-browsers/chromium_headless_shell-*/chrome-linux*/headless_shell 2>/dev/null | head -1)"
export PATH="$(dirname "$HYPERFRAMES_FFMPEG_PATH"):$(dirname "$HYPERFRAMES_FFPROBE_PATH"):$PATH"
export HYPERFRAMES_SKIP_SKILLS=1
