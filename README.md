Dotfiles
========

The point of the directory? Dotfiles in the cloud.

Yes, I'm trying to keep all of my machines on the same dotfiles,
branching my configurations where necessary. This should be a good baseline
to build your own dotfiles, if you are just starting out. However, there
are definitely configuration options that are particular to me (for example,
my Github and IRC usernames, aliases to directories on my box, etc.).

I'm thinking about containing user-specific config in a config file, as
soon as I come up with a good way to do that in bash.

If you do want to install:

    git clone git@github.com:davejacobs/dotfiles.git
    cd dotfiles
    bin/install

The install should work on OS X, Arch Linux, and Ubuntu.

If you want your prompt to load faster, consider editing your `.bash_profile`
and removing completions and language version managers.

### To do ###

- [ ] Modularize installation
- [ ] Modularize configuration files, aliases, etc.
- [ ] Convert segments of config into homebrew taps
- [ ] Allow for easier install/uninstall
