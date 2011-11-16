# .bash_profile - Profile
# Reads bash/paths to set up PATH, delegates configuration to subfiles

export PATH=~/Projects/rip/bin:$PATH

# Source all config files
source $HOME/.bash/aliases
source $HOME/.bash/config
source $HOME/.bash/functions
source $HOME/.bash/ruby
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source $HOME/.bash/completions/git

# Construct PATH line by line from listing in ~/.bash/paths
for p in $(cat $HOME/.bash/paths | grep -Ev ^\# | grep -Ev ^$); do
  export PATH=$p:$PATH
done

# Construct Java CLASSPATH line by line from listing in ~/.bash/classpaths
for clp in $(cat $HOME/.bash/classpaths | grep -Ev ^\# | grep -Ev ^$); do
  export CLASSPATH=$clp:$CLASSPATH
done
