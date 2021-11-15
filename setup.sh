#!/usr/bin/env bash

# make sure we pull and update any submodules
git submodule init
git submodule update

# Declare what directories should be available to all users
base=(
	bash
	neovim
	tmux
	vim
	flake8
)

# Directories available to local user (no root)
useronly=(
	bin
	git
	zsh
	yamllint
)

# Stow the directory at $2 in the location $1
stowit() {
	usr=$1
	app=$2
	# -v verbose
	# -R recursive, replace old links
	# -t target
	stow -v -R -t ${usr} ${app}
}

echo ""
echo "Stowing apps for user: ${whoami}"

# install apps available to local users and root
for app in ${base[@]}; do
	stowit "${HOME}" $app
done

# install only user specific configs
for app in ${useronly[@]}; do
	#if [[! "$(whoami)" = *"root"*]]; then
		stowit "${HOME}" $app
	#fi
done

echo ""
echo "### Stowit done"
