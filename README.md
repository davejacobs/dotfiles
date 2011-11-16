Dotfiles
========

The point of the directory? Dotfiles in the cloud. Nuff said.

Yes, I'm trying to keep all of my machines on the same dotfiles, branching my configurations where necessary. No, I'm not trying to generalize for everyone. Yes, this is a work in progress.

Extra
-----

A collection of extra non-startup commands--run once per computer setup:

# Make font smoothing default on non-Apple external displays showing OS X
defaults -currentHost write -globalDomain AppleFontSmoothing -int 2
