# ----------------------------------------------------------------------------------
# .zshrc - Configuration File for Zsh on Linux Server
# ----------------------------------------------------------------------------------
# This file is part of a centralized dotfiles management system using yadm.
# The system employs alternate files to manage platform-specific configurations
# and ensures consistency across different environments.
#
# HOW THIS SYSTEM WORKS:
# - This .zshrc file is automatically managed by yadm and may be overwritten
#   during pulls or checkouts.
# - Platform-specific configurations are stored in alternate files:
#     ~/.config/yadm/alt/.zshrc##os.Linux   (for Linux)
# - Upon running `yadm checkout`, the appropriate alternate file is deployed
#   to this location based on the operating system.
#
# CUSTOMIZATION GUIDELINES:
# - To make changes, edit this file directly (e.g., `nano ~/.zshrc`).
# - After editing, commit changes with `yadm commit` to ensure they are saved:
#     yadm add ~/.zshrc
#     yadm commit -m "Update .zshrc for Linux"
# - Any sensitive information (e.g., API keys) should be placed in `.zsh/env.zsh`
#   and encrypted using `yadm encrypt`.
#
# SYSTEM FILE TREE:
# ~/.zsh/
# ├── env.zsh         # Environment variables (e.g., API keys, secrets)
# ├── aliases.zsh     # Custom aliases for Zsh
# ├── functions.zsh   # User-defined shell functions
# ├── p10k.zsh        # Powerlevel10k configuration
# └── themes/         # Directory for additional themes (if applicable)
#
# ~/.config/yadm/alt/
# ├── .zshrc##os.Darwin    # macOS-specific .zshrc
# ├── .zshrc##os.Linux     # Linux-specific .zshrc
# ├── env.zsh##os.Darwin   # macOS-specific environment variables
# └── env.zsh##os.Linux    # Linux-specific environment variables
#
# ~/.local/bin/scripts/
# ├── backup.sh       # Backup automation script
# ├── deploy.sh       # Deployment helper script
# ├── cleanup.sh      # System cleanup utility
# └── ...             # Custom user scripts for various tasks
#
# IMPORTANT:
# - Avoid directly editing alternate files in `~/.config/yadm/alt/`. Instead,
#   edit this file and let yadm manage the alternates.
# - To roll back changes or restore from history, use:
#     yadm checkout -- ~/.zshrc
#
# SYSTEM DETAILS:
# - Managed By: yadm
# - Platform: Linux (Debian)
# - Related Configuration Files:
#     - ~/.zsh/env.zsh     (Environment variables)
#     - ~/.zsh/aliases.zsh (Aliases and shortcuts)
#     - ~/.local/bin/scripts/ (Custom shell scripts in $PATH)
# ----------------------------------------------------------------------------------


# Enable Powerlevel10k instant prompt. Keep this close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set PATH for custom binaries and scripts
export PATH="$HOME/.local/bin:$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Oh My Zsh configuration
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"  # Use Powerlevel10k theme
[[ -f ~/.zsh/p10k.zsh ]] && source ~/.zsh/p10k.zsh # look for the correct config file.

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Enable zsh-autosuggestions
# source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable zsh-syntax-highlighting
# source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


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

# pipx completions
autoload -U bashcompinit
bashcompinit

eval "$(register-python-argcomplete pipx)"



