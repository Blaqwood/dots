# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
export QT_QPA_PLATFORMTHEME=qt5ct
export EDITOR=nano
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall 

# Aliases
alias cp='cp -i'
#alias rm=''
alias please='doas'
alias sudo='doas'
alias urxvt='urxvt --internalBorder 20'
alias c='clear'
alias ..='cd ..'
alias ls='ls -CF --color=auto'
alias ll='ls -lisa --color=auto'
alias mkdir='mkdir -pv'
alias free='free -mt'
alias ps='ps auxf'
alias psgrep='ps aux | grep -v grep | grep -i -e VSZ -e'
alias wget='wget -c'
alias histg='history | grep'
alias myip='curl ipv4.icanhazip.com'
alias grep='grep --color=auto'
alias botany='python ~/Downloads/gits/botany/botany.py'
alias picos='picom -b --experimental-backends --config ~/.config/picom.conf'
alias picok='pkill picom'
alias sdn='shutdown now'
alias dislay='~/.local/bin/discover-overlay'
