# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
# ZSH_THEME="typewritten"

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

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# User configuration
export PATH=/usr/local/bin:$HOME/Projects/scripts:$HOME/Code/scripts:$HOME/.local/bin:node_modules/.bin:$HOME/.cargo/bin:$PATH
export EDITOR="vim"
export SSH_KEY_PATH="~/.ssh/rsa_id"
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Move zcompdump files out of ~. Instructions from
# https://github.com/ohmyzsh/ohmyzsh/issues/7332#issuecomment-624630253
mkdir -p ~/.cache/zsh
export ZSH_COMPDUMP="$HOME/.cache/zsh/zcompdump-$HOST-$ZSH_VERSION"

source $ZSH/oh-my-zsh.sh

# Don't share history between tabs
unsetopt share_history

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias g="git"
alias s="ssh"
alias v="vim"
alias k="kubectl"
alias dc="docker-compose"
alias dcr="docker-compose run"

# Insert a newline before all commands except the first one
precmd() {
  precmd() {
    echo
  }
}

# Set up tools
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(rbenv init -)"
