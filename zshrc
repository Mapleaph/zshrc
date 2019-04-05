# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/wukai/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="jovial"
ZSH_THEME="spaceship-prompt/spaceship"
#ZSH_THEME="powerlevel9k/powerlevel9k"

# zsh-completion
# manually installation
fpath=(/usr/local/share/zsh-completions $fpath)

# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=1

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
plugins=(git common-aliases osx tig)

source $ZSH/oh-my-zsh.sh

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
#alias zshconfig="emacs -nw ~/.zshrc"
alias zshconfig="vim ~/.zshrc"
#alias ohmyzsh="emacs -nw ~/.oh-my-zsh"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias ll='ls -FGlht'
alias lla='ls -FGlaht'
alias ls='ls -FG'
alias tail='tail -f'
alias make='make -w'

alias hp='export http_proxy=http://127.0.0.1:8888;export https_proxy=http://127.0.0.1:8888'
alias sp='export http_proxy=socks5://127.0.0.1:8887;export https_proxy=socks5://127.0.0.1:8887'
alias v2='export http_proxy=socks5://127.0.0.1:8886;export https_proxy=socks5://127.0.0.1:8886'
alias dp='unset http_proxy; unset https_proxy'

alias upgradebrew='hp && brew update && brew upgrade && dp'
# this command should be disabled, you can upgrade applications when you open it, this is more safe.
#alias upgradebrewcask="brew cask outdated | awk '{print $1}' | xargs brew cask install --force"

#alias upgradebrews="upgradebrew;upgradebrewcask;brew cleanup"

alias emacs="$(brew --prefix emacs)/Emacs.app/Contents/MacOS/Emacs -nw"

alias pullallsubmodules="git submodule foreach git pull origin master"

alias gg='git log --oneline --abbrev-commit --all --graph --decorate --color'

alias smi='git submodule update --init --recursive && git submodule foreach git pull origin master'

alias graph1='git log --all --decorate --oneline --graph'
alias graph='git log --all --decorate --graph'

#eval "$(thefuck --alias)"

# disable ip address check to avoid timeout
archey -o

# PATH for /usr/local/bin
export PATH="/usr/local/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# PATH config for locally installed pip packages
#export PATH="$HOME/Library/Python/2.7/bin/:$PATH"
export PATH="$HOME/Library/Python/3.7/bin/:$PATH"
#export PATH="$HOME/.local/bin/:$PATH"

# Configuration for Node Version Manager (NVM)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# PATH config for locally installed npm packages
export PATH="$(npm get prefix)/bin/:$PATH"
#
# PATH config for anaconda
#export PATH="$HOME/anaconda3/bin/:$PATH"

# config for android sdk
#export ANDROID_SDK_ROOT=/usr/local/share/android-sdk

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Configuration for pyenv, make sure this is the last line.
eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

export HOMEBREW_NO_GITHUB_API=1

# import vmware's command line control commands
export PATH="$PATH:/Applications/VMware\ Fusion.app/Contents/Library"

# go
export PATH=$PATH:$(brew --prefix go)/libexec/bin

# tomcat
CATALINA_HOME="$(brew --prefix tomcat)/libexec"
CATALINA_BASE=$CATALINA_HOME

# for jhbuild
MIN_PATH=/usr/bin:/bin:/usr/sbin:/sbin
alias GTK_PATH="export PATH=$HOME/gtk/inst/bin:$MIN_PATH"
alias LOCAL_PATH="export PATH=/System/Library/Frameworks/Python.framework/Versions/Current/bin:$MIN_PATH"

# Configuration for spaceship theme
SPACESHIP_TIME_SHOW=true

# Configuration for powerlevel9k
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)

source ~/perl5/perlbrew/etc/bashrc
