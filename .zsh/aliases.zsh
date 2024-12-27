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
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"



# Python Virtual Environment Aliases
alias _venv="source python/bin/activate"
alias _mkvenv3.11="python3.11 -m venv ./python; chmod +x ./python/bin/activate"
alias _mkvenv3.12="python3.12 -m venv ./python; chmod +x ./python/bin/activate"
alias _mkvenv3.13="python3.12 -m venv ./python; chmod +x ./python/bin/activate"

# Django Aliases
# Development Aliases
alias pm="python3 manage.py"                    # Shortcut for manage.py
alias pmr="python3 manage.py runserver"         # Start the development server
alias pmrl="python3 manage.py runserver 0.0.0.0:8000"  # Run server accessible to the local network
alias pmrs="python3 manage.py runserver_plus"   # Run server with django-extensions
alias pms="python3 manage.py shell"             # Open the Django shell
alias pmt="python3 manage.py test"              # Run tests
alias pmtd="python3 manage.py test --debug-mode"  # Run tests with debug mode
alias pmcov="pytest3 --cov=. --cov-report=html" # Run tests with coverage (requires pytest)
alias pmm="python3 manage.py makemigrations"    # Create migrations
alias pma="python3 manage.py migrate"           # Apply migrations
alias pmsh="python3 manage.py showmigrations"   # Show migration status
alias pmrdb="python3 manage.py reset_db"        # Reset the database (requires django-extensions)
alias pmc="python3 manage.py createsuperuser"   # Create a superuser
alias pmdbshell="python3 manage.py dbshell"     # Open the database shell
alias pmflush="python3 manage.py flush"         # Reset the database (remove all data)
alias pmseed="python3 manage.py loaddata"       # Load initial data from fixtures
alias pmexport="python3 manage.py dumpdata"     # Export data to a fixture
alias pmcs="python3 manage.py collectstatic"    # Collect static files
alias pmcsdry="python3 manage.py collectstatic --dry-run"  # Test collectstatic

# Logs and Debugging
alias djlogs="tail -f logs/project.log"        # Tail the project logs
alias djerr="grep ERROR logs/project.log"      # Filter ERROR messages from logs
alias djwarn="grep WARNING logs/project.log"   # Filter WARNING messages from logs
alias pmdjdebug="export DJANGO_DEBUG=True"     # Enable Django debug mode

# WSGI Server Management
alias pmrst="touch /tmp/restart.txt"           # Trigger a server restart in WSGI environments

# Docker Compose Aliases
alias dcb="docker compose build"
alias dcu="docker compose up"
alias dcub="docker compose up --build"
alias dclean="docker compose up --build && docker compose down --rmi all --remove-orphans"
alias dcd="docker compose down"


# Linux Aliases
alias swcon="tio /dev/sw_con -b 115400"

# Development Aliases
alias dew="docker exec -it web /bin/bash"
