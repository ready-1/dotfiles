# ~/.zshrc
# Entry point for ZSH configuration
# Sources modular components and platform-specific settings

# Ensure ~/.zsh exists
if [ ! -d "$HOME/.zsh" ]; then
    mkdir -p "$HOME/.zsh"
fi

# Load environment variables
[ -r "$HOME/.zsh/env.zsh" ] && source "$HOME/.zsh/env.zsh"

# Load PATH and export variables
[ -r "$HOME/.zsh/exports.zsh" ] && source "$HOME/.zsh/exports.zsh"

# Load platform-specific settings (managed by yadm alternates)
[ -r "$HOME/.zsh/platform.zsh" ] && source "$HOME/.zsh/platform.zsh"

# Load aliases
[ -r "$HOME/.zsh/aliases.zsh" ] && source "$HOME/.zsh/aliases.zsh"

# Load custom functions
[ -r "$HOME/.zsh/functions.zsh" ] && source "$HOME/.zsh/functions.zsh"

# Load Powerlevel10k configuration if available
[ -r "$HOME/.zsh/p10k.zsh" ] && source "$HOME/.zsh/p10k.zsh"

# Add any additional scripts in ~/.zsh/custom.d/
if [ -d "$HOME/.zsh/custom.d" ]; then
    for script in "$HOME/.zsh/custom.d/"*.zsh; do
        [ -r "$script" ] && source "$script"
    done
fi

# ZSH options and defaults
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000
setopt HIST_IGNORE_DUPS HIST_IGNORE_SPACE

# Default editor
export EDITOR="nvim"

# Final customizations or interactive-only settings
if [[ $- == *i* ]]; then
    # Interactive shell settings
    bindkey "^R" history-incremental-search-backward
fi
