# Dotfiles

Just my collection of configuration files.

## Notes on using stow

`stow -v -R -t ~ git`

`-v` makes the output verbose

`-R` tell STOW to purge old links first to make sure all references are clean.

`-t ~` is the target where this stow should be installed to.

`git` is the directory for the source, where we are installing from.
