" Cd.vim - Where to go on startup

if getcwd() == expand('~')
  if isdirectory(expand('~/Projects'))
    cd ~/Projects
  elseif isdirectory(expand('~/projects'))
    cd ~/projects
  endif
endif
