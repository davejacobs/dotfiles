# .bash_profile - Profile
# Reads bash/paths to set up PATH, delegates configuration to subfiles

source $HOME/.bash/functions/shared

distro=$(namedistro)

for dir in aliases config functions; do
  sourcesafe $HOME/.bash/${dir}/shared
  sourcesafe $HOME/.bash/${dir}/${distroname}
done

for environment in path classpath; do
  envvar=$(echo $environment | tr 'a-z' 'A-Z')
  sourceenv $HOME/.bash/${environment}s/shared $envvar
  sourceenv $HOME/.bash/${environment}s/${distro} $envvar
done

source $HOME/.bash/developer/ruby
source $HOME/.bash/completions/git
