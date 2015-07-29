# Path to your oh-my-zsh installation.
export ZSH=/home/tgoshinski/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#ZSH_THEME="alanpeabody"
#ZSH_THEME="simple"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(catimg chucknorris command-not-found git lein sbt scala virtualenvwrapper web-search)

# User configuration

# virtualenv
export WORKON_HOME=$HOME/envs

# Java
export IDEA_JDK=/usr/lib/jvm/java-7-oracle
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export SCALA_HOME=/usr/local/share/scala
export PATH=$JAVA_HOME/bin:$SCALA_HOME/bin:$PATH

# GOOGLE LOVE
export GAE_HOME=$HOME/google_appengine
export GOROOT=/usr/local/go
export GOARCH=amd64
export GOOS=linux
export GOPATH=$HOME/work/lab/go
export PATH=$GOPATH/bin:$PATH
#  Android
export ANDROID_STUDIO=$HOME/android-studio/bin
export PATH=$HOME/genymotion:$PATH
export PATH=$HOME/Android/Sdk/platform-tools:$PATH
export PATH=$HOME/Android/Sdk/tools:$PATH
export PATH=$GAE_HOME:$GOROOT/bin:$ANDROID_STUDIO:$PATH

# haskell
export PATH=$HOME/.cabal/bin:/opt/cabal/1.20/bin:/opt/ghc/7.8.4/bin:$PATH

# Flow
export PATH=$HOME/temp/flow:$PATH

### Added by the Heroku Toolbelt
export PATH=/usr/local/heroku/bin:$PATH

# misc
export LD_LIBRARY_PATH=/usr/lib32:$LD_LIBRARY_PATH
export SMLROOT=/usr/local/sml
export PATH=$HOME/bin:$HOME/local/bin:$PATH
export PATH=$SMLROOT/bin:$PATH
export PATH=$HOME/phantomjs/bin:$PATH
export PATH=$HOME/src/Nim/bin:$PATH
export PATH=$HOME/LightTable:$PATH
export PATH=$HOME/.composer/vendor/bin:$PATH
export PATH=$HOME/blender:$PATH

# Hub
export PATH=$HOME/git-hub/lib:$PATH
export MANPATH=$HOME/git-hub/man:$MANPATH

#export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"
export PACKAGE_DIRS=$HOME/react-packages

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias listrepos="find ~ -type d -name .git | xargs -n 1 dirname"
alias tmux="TERM=screen-256color-bce tmux"

# rbenv
export PATH=$PATH:$HOME/.rbenv/bin
eval "$(rbenv init -)"

# .NET Native
[ -s "/home/tgoshinski/.dnx/dnvm/dnvm.sh" ] && . "/home/tgoshinski/.dnx/dnvm/dnvm.sh" # Load dnvm

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/home/tgoshinski/.gvm/bin/gvm-init.sh" ]] && source "/home/tgoshinski/.gvm/bin/gvm-init.sh"
