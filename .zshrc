# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
# David aliases 
alias q='bash ~/./.qui.sh'
alias ham='bash ~/./.hamcon.sh'
alias fullham='bash ~/./.fullhamcon.sh'
alias sham='expect ~/.shamcon.exp'
alias fham='expect ~/.fhamcon.exp'
alias briss='bash ~/./.briss.sh'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias upup='sudo apt-get update; sudo apt-get upgrade'
alias ins='sudo apt-fast install'
alias rem='sudo apt-get remove'
alias repsearch='apt-cache search'
alias autoremove='sudo apt-get autoremove'
alias kai='gnome-open'
alias docs='cd ~/Documents'
alias downs='cd ~/Downloads'
alias tunnel='ssh -CND 8080 dcj138@lionxf.rcc.psu.edu'
alias go='gnome-open'
alias website='ssh veryshuai.no-ip.org'
alias putsite='sftp veryshuai.no-ip.org'
alias memkillers='ps axo %mem,comm,pid,euser | sort -nr | head -n 10'
alias web='q chromium-browser'
alias lion='expect ~/.lioncon.exp'
alias mail='sh ~/.checkmail.sh'
alias untar='tar -zxvf'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/home/veryshuai/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/texlive/2011/bin/x86_64-linux:/home/veryshuai/.rvm/bin:/home/veryshuai/Documents/stata/"
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Fix weird vim color configuration issue
export TERM=xterm-256color
[ -n "$TMUX" ] && export TERM=screen-256color

# History autocomplete
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward

# Adam Stankeiwicz <ctrl>z to get back to sleeping process
fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    fg
    zle redisplay
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

