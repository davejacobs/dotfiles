export ZSH=$HOME/.oh-my-zsh

# Look in ~/.oh-my-zsh/themes/ for other options
ZSH_THEME="robbyrussell"

# Disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Set autoupdate schedule
# export UPDATE_ZSH_DAYS=13

# Move zcompdump files out of ~, per:
# https://github.com/ohmyzsh/ohmyzsh/issues/7332#issuecomment-624630253
mkdir -p ~/.cache/zsh
export ZSH_COMPDUMP="$HOME/.cache/zsh/zcompdump-$HOST-$ZSH_VERSION"

if type brew &>/dev/null; then
  # If completions were installed by Homebrew
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
else
  # If completions were installed via git clone to ~/.oh-my-zsh/custom/plugins
  fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
fi

plugins=(git zsh-autosuggestions fast-syntax-highlighting fzf-zsh-plugin)

source $ZSH/oh-my-zsh.sh

# Don't share history between tabs
unsetopt share_history

export PATH=/opt/homebrew/bin:$HOME/.local/bin:$HOME/.local/go/bin:node_modules/.bin:$HOME/Code/scripts:$PATH
export PATH=$HOME/Mirrors/Code/Soar:$PATH
export EDITOR="nvim"
export SSH_KEY_PATH="~/.ssh/rsa_id"
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export HOMEBREW_NO_ENV_HINTS=1
export GOPATH=~/.local/go

alias g=git
alias s=ssh
alias k=kubectl
alias d=docker

[ -f $(which trash) ] && alias rm="trash"
[ -f ~/.aliases ] && source ~/.aliases 
[ -f ~/.env ] && source ~/.env 

# Insert a newline before all commands except the first one
precmd() {
  precmd() {
    echo
  }
}

# Set up tools
eval "$(rbenv init -)"
