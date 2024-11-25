# ~/.zsh/aliases.zsh

# General Aliases
alias l="ls -la"
alias ll="ls -lh"
alias la="ls -lha"
alias lsd="ls -l | grep '^d'"
alias ..="cd .."
alias ...="cd ../.."
alias grep="grep --color=auto"
alias c="clear"
alias df="df -h"
alias free="free -h"

# Git Aliases
alias gst="git status"
alias gco="git checkout"
alias gcm="git commit -m"
alias gpl="git pull"
alias gps="git push"
alias gl="git log --oneline --graph --decorate"

# Networking Aliases
alias ports="netstat -tulanp"
alias myip="curl ifconfig.me"

# Python Virtual Environment Aliases
alias _venv="source python/bin/activate"
alias _mkvenv3.11="python3.11 -m venv ./python; chmod +x ./python/bin/activate"
alias _mkvenv3.12="python3.12 -m venv ./python; chmod +x ./python/bin/activate"
alias _mkvenv3.13="python3.12 -m venv ./python; chmod +x ./python/bin/activate"

# Django Aliases
alias dj="python manage.py"
alias djmake="python manage.py makemigrations"
alias djmigrate="python manage.py migrate"
alias djshell="python manage.py shell"
alias djshellplus="python manage.py shell_plus"
alias djtest="python manage.py test"
alias djrun="python manage.py runserver"

# Docker Compose Aliases
alias dcb="docker compose build"
alias dcu="docker compose up"
alias dcub="docker compose up --build"
alias dclean="docker compose up --build && docker compose down --rmi all --remove-orphans"
alias dcd="docker compose down"


# Linux Aliases
alias swcon="tio /dev/sw_con -b 115400"
