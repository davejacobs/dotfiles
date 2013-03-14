# .bash_profile - Profile
# Reads bash/paths to set up PATH, delegates configuration to subfiles

source $HOME/.bash/functions/helpers

distro=$(namedistro)

for dir in config aliases functions; do
  sourcesafe $HOME/.bash/${dir}/shared
  sourcesafe $HOME/.bash/${dir}/${distro}
done

for environment in path classpath; do
  envvar=$(echo $environment | tr 'a-z' 'A-Z')
  sourceenv $HOME/.bash/${environment}s/shared $envvar
  sourceenv $HOME/.bash/${environment}s/${distro} $envvar
done

for language in $(find $HOME/.bash/developer -type f); do
  source $language
done

source $HOME/.bash/completions/brew
source $HOME/.bash/completions/git
source $HOME/.bash/completions/npm
