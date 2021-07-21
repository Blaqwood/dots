HISTFILE=~/.cache/zsh/histfile
HISTSIZE=1000
SAVEHIST=5000
setopt autocd
bindkey -v
zstyle :compinstall filename '/home/jonathan/.zshrc'
zstyle ':completion:*' menu yes select                      # Tab menu
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'   # Case insensitive matching

autoload -Uz promptinit && promptinit
autoload -Uz compinit && compinit # Initialize completion
zmodload -i zsh/complist          # Initialize completion

export LSCOLORS='gxbxaxaxCxcxcxcxcxgxgx'                                               # ls command colors for BSD
export LS_COLORS='di=36:ln=31:so=30:pi=30:ex=1;32:bd=32:cd=32:su=32:sg=32:tw=36:ow=36' # ls command colors for Linux

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} # ls colors for completion

########## Options ##########

setopt AUTO_CD              # If command can't be executed, and is name of directory, cd to that directory
setopt AUTO_PUSHD           # Go to previous directories with cd
setopt HIST_IGNORE_ALL_DUPS # Ignore duplicate commands
setopt HIST_REDUCE_BLANKS   # Remove blanks from commands
setopt PROMPT_SUBST         # Prompt substitution
setopt PUSHD_IGNORE_DUPS    # Ignore duplicates
setopt PUSHD_SILENT         # Silent pushing and popping
setopt SHARE_HISTORY        # Share history between sessions


TERMINAL="urxvt"
export terminal='urxvt'
export EDITOR='vim'        # Set default editor
#export BAT_THEME="TwoDark"  # Set bat theme
#export TERM=xterm-256color  # Set term variable
export FPATH="/usr/local/share/zsh/functions:$FPATH"
#export QT_QPA_PLATFORMTHEME=qt5ct
export XDG_CONFIG_HOME=~/.config

#export GTK_CSD=0
#LD_PRELOAD="/usr/lib/libgtk3-nocsd.so.0"

export PATH="$HOME/.local/bin/:$PATH"   # Add user binaries and scripts to path
#export LD_LIBRARY_PATH="$HOME/.local/lib/:$LD_LIBRARY_PATH"
export MANPATH="$HOME/.local/share/man:$MANPATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh # Fuzzy finder

# Prompt 
export PS1="%F{blue}%~%f %(?.%F{green}❯%f.%F{red}❯%f) " # Alternatives for prompt icon: ◯, •, ❯
#prompt spaceship

#keybinds
bindkey '^A' beginning-of-line  # Bind beginning of line
bindkey '^E' end-of-line        # Bind end of line
bindkey '^U' backward-kill-line # Bind delete line
bindkey '^L' clear-screen       # Bind clear screen
bindkey '^[[A' up-line-or-search    # Search up through history
bindkey '^[[B' down-line-or-search  # Search down through history


