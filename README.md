# Dotfiles

Dotfiles in the cloud. Mostly specific to how I work.

If you do want to install:

    git clone git@github.com:davejacobs/dotfiles.git
    cd dotfiles
    bin/install

The install should work on OS X and Ubuntu.

If you want your prompt to load faster, consider editing your `.bash_profile`
and removing completions and language version managers.

### To do ###

- [x] Migrate to Zsh
- [x] Update Vim plugins and settings
- [ ] Modularize installation
- [ ] Modularize configuration files, aliases, etc.
- [ ] Convert segments of config into homebrew taps
- [ ] Allow for easier and cleaner install/uninstall
