export QT_QPA_PLATFORMTHEME=gtk2
export export QT_AUTO_SCREEN_SCALE_FACTOR=2
#export GDK_SCALE=2
#export GDK_DPI_SCALE=0.5
export GDK_SCALE=1
export GDK_DPI_SCALE=1

export MOZ_ENABLE_WAYLAND=1

export MPD_HOST=${XDG_RUNTIME_DIR}/mpd/socket

#export http_proxy="http://localhost:8118"
#export https_proxy="http://localhost:8118"

PATH="$PATH:$HOME/.local/bin"

#set terminal palette
#if [ "$TERM" = "linux" ]; then
#	echo -ne "\e]P02c3e50\e\\"
#	echo -ne "\e]PA34495e\e\\"
#	echo -ne "\e]PB7f8c8d\e\\"
#	echo -ne "\e]P895a5a6\e\\"
#	echo -ne "\e]PCbdc3c7\e\\"
#	echo -ne "\e]P7e0e0e0\e\\"
#	echo -ne "\e]PDf5f5f5\e\\"
#	echo -ne "\e]PFecf0f1\e\\"
#	echo -ne "\e]P1e74c3c\e\\"
#	echo -ne "\e]P9e67e22\e\\"
#	echo -ne "\e]P3f1c40f\e\\"
#	echo -ne "\e]P22ecc71\e\\"
#	echo -ne "\e]P61abc9c\e\\"
#	echo -ne "\e]P43498db\e\\"
#	echo -ne "\e]P59b59b6\e\\"
#	echo -ne "\e]PEbe643c\e\\"
#	clear
#fi

clear
