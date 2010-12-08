# .bashrc - Profile
# Reads bash/paths to set up PATH, delegates configuration to subfiles

# Bash resources:
# - General Bash tutorial [1]
# - Modifying the prompt [2]

# Construct PATH line by line from listing in ~/.bash/paths
paths=$HOME/.bash/paths
for p in $(cat ${paths} | grep -Ev ^\# | grep -Ev ^$)
do
  export PATH=$p:$PATH
done
unset paths

# Source configuration, aliases, functions, and completions
for d in config aliases functions completions
do
  . $HOME/.bash/$d
done

# [1]: http://www.hypexr.org/bash_tutorial.php
# [2]: http://freeunix.dyndns.org:8088/site2/howto/Bash.shtml
