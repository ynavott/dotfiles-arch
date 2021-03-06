# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Alias for version control
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

#nord-dircolors
# eval $(dircolors ~/.dir_colors)

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/yoav/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=powerlevel10k/powerlevel10k

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# For plugin autoupdate anti instant prompt
ZSH_CUSTOM_AUTOUPDATE_QUIET=true

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(archlinux git pip zsh-z command-not-found you-should-use autoupdate zsh-autosuggestions zsh-syntax-highlighting fzf)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# --------------------------------- MANUAL STUFF -----------------------------------
# Aliases
    # doas
    alias -g sudo='doas'

    # color
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias diff='diff --color=auto'
    alias ip='ip --color=auto'
    alias pacman='pacman --color=auto'
    alias yay="paru"

    # ls
    alias ls='ls --color=auto'
    alias ls='lsd --group-dirs first'
    alias tree='lsd --tree'
    alias ll='ls -l --total-size'
    alias la='ls -A'
    alias lla='ls -lA'
    alias l='ls -F'

    # top to ytop
    alias top='bpytop'

    # Show public IP
    alias myip='curl http://ipecho.net/plain; echo'

    # cat & less to bat
    #alias bat='bat --theme=ansi-$([ "$COLOR_SCHEME" = "light" ] && echo "light" || echo "dark")'
    alias cat='bat --pager=never'
    alias less='bat'

    # cowsay alias
    alias cs='cowsay'

    # nnn alias
    alias n='nnn -e -H'

    # nvim alias
    alias v='nvim'

    # TEXMFDIST definition and tlmgr alias
    export TEXMFDIST="/usr/share/texmf-dist"
    alias tlmgr='$TEXMFDIST/scripts/texlive/tlmgr.pl --usermode'

    # Kitty kittens
    alias ktn='kitty +kitten'

    # make pipenv use the pyenv python ver
    alias pipenv-install='pipenv --python "$(pyenv which python)" install'

# pyenv stuff
eval "$(pyenv init -)"

# Completions
    # pipx completion
    autoload -U +X bashcompinit && bashcompinit
    eval "$(register-python-argcomplete pipx)"

    # pipenv
    #eval "$(pipenv --completion)"

    # kitty completions
    autoload -Uz compinit
    compinit
    # Completion for kitty
    kitty + complete setup zsh | source /dev/stdin

# zsh history stuff
export HISTFILE="$XDG_DATA_HOME"/zsh/zsh_history
export HISTSIZE=100000
export SAVEHIST=$HISTSIZE
setopt HIST_FIND_NO_DUPS
setopt INC_APPEND_HISTORY

# you-should-use position
export YSU_MESSAGE_POSITION="after"

# Qt5 appearance with qt5ct
#export QT_QPA_PLATFORMTHEME=qt5ct

# fzf keybinds options
    # preview file when pasting filename with ctrl-t
    export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
    # long command preview in preview window when using ctrl-r to paste command from history when pressing ? key
    export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
    # show dir trees when using alt-c to cd into dirs
    export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"

# man page colors
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# Proper colors for syntax-highlighting
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#ccc'

# --------------------------------- END -----------------------------------


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
