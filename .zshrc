# If you come from bash, you might have to change your $PATH.
export PATH="$HOME/bin:/usr/local/bin:$PATH"

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="avit"

# Common plugins
plugins=(
  git
  z
  sudo
  extract
  command-not-found
)

source "$ZSH/oh-my-zsh.sh"

# Locale
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Editor
export EDITOR="vim"
export VISUAL="vim"

# History
HISTSIZE=5000
SAVEHIST=5000
HISTFILE="$HOME/.zsh_history"
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS

# Completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# Quick history search with up/down arrows
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Common aliases
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'

# Useful options
setopt AUTO_CD
setopt CORRECT

# Homebrew
if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -x /usr/local/bin/brew ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

# User bin
export PATH="$HOME/.local/bin:$PATH"

# Load local overrides
[[ -f "$HOME/.zshrc.local" ]] && source "$HOME/.zshrc.local"
