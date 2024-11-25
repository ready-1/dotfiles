# Enable Powerlevel10k instant prompt. Keep this close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set PATH for custom binaries and scripts
# export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
# Clean and prioritize PATH
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$HOME/.local/bin:$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Oh My Zsh configuration
export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="powerlevel10k/powerlevel10k"  # Use Powerlevel10k theme

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Plugins
# plugins=(git)

# Enable zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Load Powerlevel10k configuration
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Load modular configurations
if [ -r "$HOME/.zsh/env.zsh" ]; then
    source "$HOME/.zsh/env.zsh"
fi

if [ -r "$HOME/.zsh/exports.zsh" ]; then
    source "$HOME/.zsh/exports.zsh"
fi

if [ -r "$HOME/.zsh/aliases.zsh" ]; then
    source "$HOME/.zsh/aliases.zsh"
fi

if [ -r "$HOME/.zsh/functions.zsh" ]; then
    source "$HOME/.zsh/functions.zsh"
fi

if [ -r "$HOME/.zsh/platform.zsh" ]; then
    source "$HOME/.zsh/platform.zsh"
fi

# ZSH options and history settings
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000
setopt HIST_IGNORE_DUPS HIST_IGNORE_SPACE

# Default editor
export EDITOR="nvim"

# Interactive shell customizations
if [[ $- == *i* ]]; then
    bindkey "^R" history-incremental-search-backward
fi

# Enable zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Enable Powerline10k theme
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
