# Path to your oh-my-zsh installation.
  export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="leomeloxp"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(adb bower command-not-found composer copydir copyfile emacs git gulp nvm nyan screen sublime web-search z zsh_reload)

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

##############################################################################
## Leo's Custom Settings
##

# Enables Android command line tools
export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

# Add local node binaries to path
export PATH=node_modules/.bin:$PATH

# Sets clear alias to cat motd
alias cl="clear && cat /etc/motd"

# Better default ls behaviour
alias ls='ls -lah'

# Better tree behaviour
function t() {
  # Defaults to 3 levels deep, do more with `t 5` or `t 1`
  # pass additional args after
  tree -I '.git|node_modules|bower_components|.DS_Store' --dirsfirst -L ${1:-3} -aC $2
}

# Start vagrant and ssh in
function vup() {
  cd ~/Development/Vagrant; vagrant reload; vagrant ssh;
}

# Resets zsh
function zr() {
  source ~/.zshrc
}

# Sets the default user for the terminal (theme integration)
DEFAULT_USER='leomeloxp'

# Enables yarn global modules
export PATH="$PATH:`yarn global bin`"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
