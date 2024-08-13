# Configuration for Altibox
#

[ -f ~/.altibox ] && source ~/.altibox

# END configuration for Altibox

# Load the flus-dns script
#
[ -f ~/bin/flush-dns.sh ] && source ~/bin/flush-dns.sh


######################
# java configuration
export JAVA_HOME='/opt/homebrew/opt/openjdk'

######################
# dotnet core configuration
export DOTNET_ROOT="/opt/homebrew/opt/dotnet/libexec"

# Path to your oh-my-zsh installation.
export ZSH="/Users/bjorn/.oh-my-zsh"

# Path to tmux config (used by tmux plugin for oh-my-zsh)
export ZSH_TMUX_CONFIG=$HOME/.config/tmux/tmux.conf

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
ZSH_THEME_RANDOM_CANDIDATES=(
  "afowler"
  "cloud"
  "mortalscumbag"
  "agnoster"
  "fino-time"
  "robbyrussell"
  "rkj-repos"
  "tonotdo"
  "dieter"
  )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  brew
  colorize
  dotenv
  git
  jira
  httpie
  macos
  pip
  poetry
  rust
  zoxide
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration


# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
  # export EDITOR='mvim'
fi


# Exports recommended by Brew
export PKG_CONFIG_PATH="/opt/homebrew/opt/ruby/lib/pkgconfig"

export GROOVY_HOME=/opt/homebrew/opt/groovy/libexec

# For compilers to find sqlite you may need to set:
export LDFLAGS="-L/opt/homebrew/opt/sqlite/lib"
export CPPFLAGS="-I/opt/homebrew/opt/sqlite/include"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
export ARCHFLAGS="-arch arm64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias ohmyzsh="vim ~/.oh-my-zsh"
alias vim='nvim'
alias zconf="vim ~/.zshrc"

source ~/.aliases

## Add to PATH
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$PATH:$HOME/bin"

# [ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# start atuin for command history
eval "$(atuin init zsh)"

eval "$(zoxide init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fortune

echo
study.sh
export GROOVY_HOME=/opt/homebrew/opt/groovy/libexec
