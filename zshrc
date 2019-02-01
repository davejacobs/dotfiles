# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

plugins=(autoenv composer zsh-autosuggestions zsh-syntax-highlighting)

# User configuration

export PATH="$HOME/Automation/automate/bin:$HOME/Automation/scripts/bin:$HOME/Automation/media/bin":$PATH
export PATH=/usr/local/bin:$PATH
export PATH="$HOME/.local/bin":$PATH
export PATH="$HOME/.cabal/bin":$PATH
export PATH=$PATH:"node_modules/.bin"
export PATH=/usr/local/opt/python/libexec/bin:$PATH
export PATH="/opt/chefdk/bin":$PATH

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

fpath=(/usr/local/share/zsh-completions $fpath)
alias mux=tmuxinator

source $ZSH/oh-my-zsh.sh

# Don't share history between tabs
unsetopt share_history

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR="vim"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias g="git"
alias s="ssh"
alias m="./manage.py"
alias v="vim"
alias dcr="docker-compose run"

fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' \
                  -not -path '*node_modules*' \
                  -not -path '*.sass-cache*' \
                  -not -path '*.git*' \
                  -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(pyenv init -)"

# Connect docker to docker-machine 
# docker-machine restart default
eval $(docker-machine env default)
