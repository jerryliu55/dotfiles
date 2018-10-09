# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="bureau"
ZSH_THEME="dpoggi-modified"
# ZSH_THEME="bira"
# ZSH_THEME="spaceship"
# ZSH_THEME="robbyrussell" # default

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
SPACESHIP_RUBY_SHOW=false
SPACESHIP_NVM_SHOW=false

SOBOLE_THEME_MODE="dark"

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

# This speeds up pasting w/ autosuggest
# https://github.com/zsh-users/zsh-autosuggestions/issues/238
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"
ssh-add ~/.ssh/id_rsa

# tmux
export TERM=xterm-256color
alias tmux-pl='powerline-daemon -q; tmux source "/Users/jerryliu/Library/Python/3.6/lib/python/site-packages/powerline/bindings/tmux/powerline.conf"'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/scripts" # Add RVM to PATH for scripting
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# ocaml
eval CAML_LD_LIBRARY_PATH="$HOME/.opam/system/lib/stublibs:/usr/local/lib/ocaml/stublibs"; export CAML_LD_LIBRARY_PATH;
OPAMUTF8MSGS="1"; export OPAMUTF8MSGS;
MANPATH="$HOME/.opam/system/man:"; export MANPATH;
PERL5LIB="$HOME/.opam/system/lib/perl5"; export PERL5LIB;
OCAML_TOPLEVEL_PATH="$HOME/.opam/system/lib/toplevel"; export OCAML_TOPLEVEL_PATH;

# opam path
export PATH="$PATH:$HOME/.opam/system/bin" # Add RVM to PATH for scripting
# PATH="$HOME/.opam/system/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:$HOME/go/bin:/usr/local/opt/go/libexec/bin:$HOME/.rvm/bin"; export PATH;

# OPAM configuration
. $HOME/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# league alias
alias league="ping 104.160.131.3"

# dev
if [[ -f /opt/dev/dev.sh  ]] && [[ $- == *i*  ]]; then
  source /opt/dev/dev.sh
fi

# utility env vars
export JEKYLL_EDITOR=vim
export VISUAL=vim # use vim as default editor for everything
export EDITOR="$VISUAL"

# utility aliases
alias c=clear
alias s=spotify
alias f=fg
alias git=hub
alias cat="bat --style=plain --theme=DarkNeon"
alias bexec="bundle exec"
alias pt=ptpython
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
# eval $(thefuck --alias)

# git
alias gpocb="git push --set-upstream origin \$(git rev-parse --abbrev-ref HEAD)"

# Golang
export GOPATH=$HOME/go
export GOROOT=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$HOME/protoc-3.5.1-osx-x86_64/bin

# binds hex 0x18 0x7f with deleting everything to the left of the cursor
bindkey "^X\\x7f" backward-kill-line

# gnu utils
PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/make/libexec/gnuman:$MANPATH"

# powerline
PATH="$PATH:$HOME/Library/Python/3.6/bin/"

# racket
export PATH=$PATH:$HOME/racket_v6_11/bin

# macports
export PATH=$PATH:/opt/local/bin
