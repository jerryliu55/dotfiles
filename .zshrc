# Path to your oh-my-zsh installation.
export ZSH=/Users/xiu/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="spaceship"

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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Disable spaceship NVM
SPACESHIP_NVM_SHOW=false

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export GOPATH=$HOME/Go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# SSH aliases
alias macmini='ssh -i ~/.ssh/macmini macmini@macs-mac-mini.local -t'
alias clouddashboard='ssh -i ~/.ssh/CloudDashboard.pem ubuntu@54.173.195.44'

# Other aliases
alias vault='~/vault'
alias aws-es-logger='~/aws-es-logger'

alias league="ping 104.160.131.1"

# OpenSSL
export OpenSSL_HOME=/usr/bin/openssl
export PATH=$PATH:$OpenSSL_HOME/bin

function base16()
{
  # atelier dune dark
  [ -f /Users/xiu/.config/base16-shell/scripts/base16-atelier-dune.sh ] && . /Users/xiu/.config/base16-shell/scripts/base16-atelier-dune.sh
  ln -fs /Users/xiu/.config/base16-shell/scripts/base16-atelier-dune.sh ~/.base16_theme
  export BASE16_THEME=atelier-dune
  [ -f ~/.vimrc_background ] && rm ~/.vimrc_background
  echo "colorscheme base16-atelier-dune" >> ~/.vimrc_background

  # eighties
  #[ -f /Users/xiu/.config/base16-shell/scripts/base16-eighties.sh ] && . /Users/xiu/.config/base16-shell/scripts/base16-eighties.sh
  #ln -fs /Users/xiu/.config/base16-shell/scripts/base16-eighties.sh ~/.base16_theme
  #export BASE16_THEME=eighties
  #[ -f ~/.vimrc_background ] && rm ~/.vimrc_background
  #echo "colorscheme base16-eighties" >> ~/.vimrc_background

  # tomorrow night
	#[ -f /Users/xiu/.config/base16-shell/scripts/base16-tomorrow-night.sh ] && . /Users/xiu/.config/base16-shell/scripts/base16-tomorrow-night.sh
  #ln -fs /Users/xiu/.config/base16-shell/scripts/base16-tomorrow-night.sh ~/.base16_theme
  #export BASE16_THEME=tomorrow-night
  #[ -f ~/.vimrc_background ] && rm ~/.vimrc_background
  #echo "colorscheme base16-tomorrow-night" >> ~/.vimrc_background
}

base16
