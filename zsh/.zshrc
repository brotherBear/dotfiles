# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Configuration for Altibox
#
export PUPPET_MODULES=/Users/bjorn/Dev/altibox/puppet/modules

# docker misc
d() { docker exec -it $1 bash ; }
d-clean() {
  docker volume ls -qf dangling=true | xargs docker volume rm
  docker images -f dangling=true -q | xargs -n1 docker rmi
  docker images | grep "<none>" | awk '{print $3}' | xargs -n1 docker rmi > /dev/null 2>&1
}

# docker prov
alias dp="d prov"
alias dpl="docker exec -it prov bash -c \"less /var/log/tomcat/prov.log\""
alias cdprov="cd /Users/bjorn/Dev/altibox/prov/prov-web/prov-app"
makep() { cdprov && (make DOCKER_PORT_MAPS="-p 11080:7999 -p 8180:8080 -P" ${@:1} || true) && cd - &>/dev/null ; }
mcip() { cdprov && (mvn clean install && makep env || true) && cd - &>/dev/null ; }

# docker transit
alias dt="d transit"
alias dtl="docker exec -it transit bash -c \"less /var/log/wildfly/server.log\""
alias cdtransit="cd /Users/bjorn/Dev/altibox/transit"
maket() { cdtransit && (make DOCKER_PORT_MAPS="-p 11082:7999 -p 8182:8080 -P" ${@:1} || true) && cd - &>/dev/null ; }
mcit() { cdtransit && (mvn clean install && maket env || true) && cd - &>/dev/null ; }

# docker netint
alias dn="d netint2"
alias dnl="docker exec -it netint2 bash -c \"less /var/log/netint/netint.log\""
alias cdnetint="cd /Users/bjorn/Dev/altibox/netint2"
maken() { cdnetint && (make DOCKER_PORT_MAPS="-p 11084:7999 -p 8184:8080 -P" ${@:1} || true) && cd - &>/dev/null ; }
mcin() { cdnetint && (mvn clean install && maken env || true) && cd - &>/dev/null ; }

# docker mobileprov
alias dmp="d mobileprov"
alias dmpl="docker exec -it mobileprov bash -c \"less /var/log/tomcat/mobileprov.log\""
alias cdmobileprov="cd /Users/bjorn/Dev/altibox/prov/prov-web/mobile-app"
makemp() { cdmobileprov && (make DOCKER_PORT_MAPS="-p 11081:7999 -p 8181:8080 -P" ${@:1} || true) && cd - &>/dev/null ; }
mcimp() { cdmobileprov && (mvn clean install && makemp env || true) && cd - &>/dev/null ; }

# END configuration for Altibox


######################
# java configuration
export JAVA_8='/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home'
export JAVA_11='/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home'
export JAVA_14='/Library/Java/JavaVirtualMachines/adoptopenjdk-14.jdk/Contents/Home'

alias j8='export JAVA_HOME=$JAVA_8;export PS1="J8 $PS1"'
alias j11='export JAVA_HOME=$JAVA_11;export PS1="J11 $PS1"'
alias j14='export JAVA_HOME=$JAVA_14;export PS1="J14 $PS1"'
j8

# Path to your oh-my-zsh installation.
export ZSH="/Users/bjorn/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
plugins=(z zsh-autosuggestions git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"

# For compilers to find sqlite you may need to set:
export LDFLAGS="-L/usr/local/opt/sqlite/lib"
export CPPFLAGS="-I/usr/local/opt/sqlite/include"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias cdmeta="cd /Volumes/Lexar/repos/metasploitable3"
alias vim='nvim'

source ~/.aliases

# Add to PATH
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/qt/bin:$PATH"
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
