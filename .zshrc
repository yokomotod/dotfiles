# Set up the prompt

autoload -Uz promptinit
promptinit
prompt walters

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history
setopt hist_ignore_dups
setopt hist_reduce_blanks
setopt extended_history
setopt share_history
function history-all { history -E 1 }

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
# eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
# zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# alias ls='ls --color=auto'
# # some more ls aliases
# alias ll='ls -l'
# alias la='ls -A'
# alias l='ls -CF'

############################################################################################

case "$OSTYPE" in
# BSD (contains Mac)
darwin*)
  alias ls='ls -G'
  ;;
# for GNU
linux*)
  alias ls='ls --color=auto'
  ;;
esac
alias ll='ls -l'
alias la='ls -a'

# turn off stop and start
stty stop undef
stty start undef

LANG=en_US.UTF-8
# LANG=ja_JP.UTF-8

export PATH=$HOME/bin:$HOME/myroot/usr/local/bin:$PATH
export INCLUDE=$HOME/myroot/usr/local/include
export CPLUS_INCLUDE_PATH=$HOME/myroot/usr/local/include

export LD_LIBRARY_PATH=/home/yokomoto/myroot/usr/local/lib

if [ -s '/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' ]; then
  alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
  export EDITOR='subl -w'
fi

if [ -s ~/.zsh/auto-screen.zsh ]; then
  source ~/.zsh/auto-screen.zsh
fi

# perlbrew
if [ -s ~/perl5/perlbrew ]; then
  source ~/perl5/perlbrew/etc/bashrc
fi

# rbenv
if [ -s /usr/local/rbenv ]; then
  export RBENV_ROOT="/usr/local/rbenv"
  export PATH="/usr/local/rbenv/bin:$PATH"
  eval "$(rbenv init -)"
  source /usr/local/rbenv/completions/rbenv.zsh
elif [ -s ~/.rbenv ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
  source ~/.rbenv/completions/rbenv.zsh
fi

# nvm
if [ -s ~/.nvm/nvm.sh ]; then
  source ~/.nvm/nvm.sh
  nvm use v0.6.11
fi

# gvm
#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "~/.gvm/bin/gvm-init.sh" ]] && source "~/.gvm/bin/gvm-init.sh"

# for tex
export BIBINPUTS=.:$HOME/tex/bib

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# for git status
autoload -Uz VCS_INFO_get_data_git; VCS_INFO_get_data_git 2> /dev/null

function rprompt-git-current-branch {
  local name st color gitdir action
  if [[ "$PWD" =~ '/¥.git(/.*)?$' ]]; then
    return
  fi
  name=`git rev-parse --abbrev-ref=loose HEAD 2> /dev/null`
  if [[ -z $name ]]; then
    return
  fi

  gitdir=`git rev-parse --git-dir 2> /dev/null`
  action=`VCS_INFO_git_getaction "$gitdir"` && action="($action)"

  st=`git status 2> /dev/null`
  if [[ -n `echo "$st" | grep "^nothing to"` ]]; then
    color=%F{green}
  elif [[ -n `echo "$st" | grep "^nothing added"` ]]; then
    color=%F{yellow}
  elif [[ -n `echo "$st" | grep "^# Untracked"` ]]; then
    color=%B%F{red}
  else
    color=%F{red}
  fi

  echo "$color$name$action%f%b "
}

setopt prompt_subst

RPROMPT='[`rprompt-git-current-branch`%~]'

# local
[[ -s "~/.zshrc.local" ]] && source ~/.zshrc.local
