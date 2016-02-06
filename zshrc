# Path to your oh-my-zsh installation.
export ZSH=/Users/David/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rbenv virtualenv virtualenvwrapper nvm node npm cabal heroku z tmuxinator)

# User configuration

export PATH="$HOME/Automation/automate/bin:$HOME/Automation/scripts/bin:$HOME/Automation/media/bin":$PATH
export PATH=$PATH:"node_modules/.bin"
# export MANPATH="/usr/local/man:$MANPATH"

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR="vim"

# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

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

if [ $(which pgcli) ]; then
  alias p="pgcli"
else
  alias p="psql"
fi

# OSX aliases

alias paste="pbpaste"
alias copy="pbcopy"
alias see="SetFile -a v"
alias hide="SetFile -a V"

# Linux aliases

# alias copy="xsel --clipboard --input"
# alias paste="xsel --clipboard --output"

# Commands

alias tunnel="ssh -N -L 1234:localhost:80 $1"
alias tunnelp="ssh -N -l $(whoami) -L 1234:localhost:$2 $1"

# Other commands 

# if [ $(which lunchy) ]; then
#   LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
#   if [ -f $LUNCHY_DIR/lunchy-completion.bash ]; then
#   . $LUNCHY_DIR/lunchy-completion.bash
#   fi
# fi

# Functions

# change-hostname() {
#   sudo scutil –-set HostName "$@"
#   hostname "$@"
# }

# tell-me() {
#   command="display notification '"$1"' with title 'Tell Me' sound name 'Ping'"
#   echo command is "$command"
#   osascript -e "$command"
# }

# Determine system distro
# namedistro() {
#   system=`uname -s`
#   case "$system" in
#   Darwin)
#     ret="osx"
#     ;;
#   Linux)
#     if [ -f "/etc/arch-release" ]; then
#       ret="arch"
#     elif [ -f "/etc/lsb-release" ]; then
#       ret="ubuntu"
#     fi
#     ;;
#   *)
#     ret="*"
#     ;;
#   esac
#   unset system
#
#   echo $ret
# }
#
# Add path idempotently
# pathadd() {
#   if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]
#   then
#       PATH="${PATH:+"$PATH:"}$1"
#   fi
# }
#
# Second option, follows symlinks
# add_to_path() {
#   for d; do
#     d=$(cd -- "$d" && { pwd -P || pwd; }) 2>/dev/null # canonicalize symbolic links
#     if [ -z "$d" ]; then continue; fi # skip nonexistent directory
#     case ":$PATH:" in
#       *":$d:"*) :;;
#       *) PATH=$PATH:$d;;
#     esac
#   done
# }
#
# Only source file if present
# sourcesafe() {
#   [[ -f $1 ]] && source $1
# }
#
# # TODO: Use pathadd instead of this for idempotent path adds
#
# Create an environmental variable based on lines
# in a file
# sourceenv() {
#   src=$1
#   variable=$2
#
#   if [ -f $src ]; then
#     entries=$(cat $src | grep -Ev '^\#|^$')
#     for entry in $entries; do
#       # export $variable=$entry:${!variable}
#       export $variable=${!variable}:$entry
#     done
#   fi
# }
#
# encrypt() {
#   openssl des3 -salt -in $1 -out $2 
# }
#
# decrypt() {
#   openssl des3 -d -salt -in $1 -out $2 
# }
#
# # Fold text with par
# fld() {
#   paste | par $1 | copy
# }
#
# # Send pgrep results back to ps for more information
# pg() {
#   pgrep "$@" | xargs ps -ef
# }
#
# lscmd() {
#   COMMANDS=$(echo $PATH | tr ":" "\n" | xargs -I @ find @ -type f -exec sh -c 'test -x {} && echo {}' \; 2> /dev/null)
#   ALIASES=$(alias | tr -d "alias ")
#   echo "$COMMANDS"$'\n'"$ALIASES" | sort -u
# }
#
# clone() {
#   git clone http://github.com/${1}.git
# }
