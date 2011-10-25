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
eval "$(dircolors -b)"
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

alias ls='ls --color=auto'
# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

LANG=en_US.UTF-8
# LANG=ja_JP.UTF-8

export PATH=$HOME/bin:$HOME/myroot/usr/local/bin:$PATH
export INCLUDE=$HOME/myroot/usr/local/include
export CPLUS_INCLUDE_PATH=$HOME/myroot/usr/local/include

if [ -s ~/.zsh/auto-screen.zsh ]; then
    source ~/.zsh/auto-screen.zsh
fi

if [ -s ~/perl5/perlbrew ]; then
    source ~/perl5/perlbrew/etc/bashrc
fi

if [ -s ~/.rbenv ]; then
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
    source ~/.rbenv/completions/rbenv.zsh
fi


