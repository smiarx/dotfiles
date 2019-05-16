# Base16 Shell
BASE16_SHELL="/home/sirbu/.base16-manager/chriskempson/base16-shell/"
BASE16_SHELL_SET_BACKGROUND=false
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

bindkey -v

alias scvim='vim -c "setfiletype supercollider"'

function youtube-mpd()
{
    youtube-dl -i -f bestaudio --add-metadata -o "/tmp/youtube-mpd/%(title)s.%(ext)s" "$1" | sed -un "s/\[ffmpeg\] Adding metadata to '\(.*\)'/\1/p" | while read f; do
        mpc add "$f"
    done
}

setopt histignorespace

#export TERM='xterm-256color'

