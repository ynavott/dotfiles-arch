# Unique PATH entries
typeset -aU path

# Other XDG paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_DATA_DIRS=${XDG_DATA_DIRS:="/usr/local/share:/usr/share"}
export XDG_CONFIG_DIRS=${XDG_CONFIG_DIRS:="/etc/xdg"}

# Disable files
export LESSHISTFILE=-

# envvars for programs I want
export EDITOR="nvim"
export READER="zathura"
export VISUAL="nvim"
export TERMINAL="kitty"
export COLORTERM="truecolor"
export BROWSER="firefox"
export VIDEO="mpv"
export IMAGE="sxiv"

# Qt5 appearance with qt5ct
export QT_QPA_PLATFORMTHEME="qt5ct"

############### XDG PATH COMPLIANCE
    # Cargo
    export CARGO_HOME="$XDG_DATA_HOME"/cargo
    export PATH="$XDG_DATA_HOME/cargo/bin:$PATH"
    # npm
    PATH="$XDG_DATA_HOME/node_modules/bin:$PATH"
    export npm_config_prefix="$XDG_DATA_HOME"/node_modules
    export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
    # gnupg
    export GNUPGHOME="$XDG_DATA_HOME"/gnupg
    # gtk1 config
    export GTK_RC_FILES="$XDG_CONFIG_HOME"/gtk-1.0/gtkrc
    # wget config
    export WGETRC="$XDG_CONFIG_HOME/wgetrc"
    # WeeChat
    export WEECHAT_HOME="$XDG_CONFIG_HOME"/weechat
    # pylint
    export PYLINTHOME="$XDG_CACHE_HOME"/pylint
    # Java
    export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
    # pass
    export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
    # ZSH-z stuff
	export ZSHZ_DATA="$XDG_DATA_HOME"/zsh/ZSH-z-database
############### END

# pyenv paths
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# pipenv stuff
	# create venv in proj directory
	export PIPENV_VENV_IN_PROJECT=1

	# make pipenv use the pyenv python ver
	export PIPENV_PYTHON="$PYENV_ROOT/shims/python"

# Path for pipx
export PATH="$PATH:/home/yoav/.local/bin"

# Path for emacs
export PATH="$HOME/.emacs.d/bin:$PATH"

# Path for Scripts
export PATH="$HOME/Scripts/bin:$PATH"

# fzf stuff
    # use fd instead of find for cleaner data
    export FZF_DEFAULT_COMMAND='fd -H --type f'
    # nord color scheme
    export FZF_DEFAULT_OPTS='
    --color fg:#D8DEE9,bg:#2E3440,hl:#A3BE8C,fg+:#D8DEE9,bg+:#434C5E,hl+:#A3BE8C
    --color pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B'

# bat theme
export BAT_THEME="Nord"
