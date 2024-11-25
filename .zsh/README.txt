~
├── .zsh/                        # Modular ZSH configuration directory
│   ├── aliases.zsh              # Alias definitions (e.g., shortcuts for commands)
│   ├── functions.zsh            # Custom ZSH functions
│   ├── env.zsh                  # Environment variables (general, platform-agnostic)
│   ├── p10k.zsh                 # Powerlevel10k theme configuration
│   ├── platform.zsh             # Platform-specific settings, sourced dynamically
│   └── exports.zsh              # PATH and similar variable exports
│
├── .zshrc                       # Main ZSH configuration, sources modular files
│
├── .config/                     # Configurations for applications and tools
│   ├── git/                     # Git configurations
│   │   └── config               # Global Git settings (e.g., user info, aliases)
│   ├── nvim/                    # Neovim configuration
│   │   └── init.vim             # Neovim's main configuration file
│   ├── tmux/                    # Tmux configuration
│   │   └── tmux.conf            # Tmux keybindings and settings
│   ├── yadm/                    # yadm-specific configurations
│   │   ├── alt/                 # Alternate files for platform-specific setups
│   │   │   ├── .env##os.Darwin  # macOS-specific environment variables
│   │   │   └── .env##os.Linux   # Linux-specific environment variables
│   │   └── encrypt              # List of files to encrypt (e.g., `.env`)
│   └── other-app/               # Placeholder for other tools' configs (e.g., Docker, etc.)
│
├── .local/                      # User-specific executables and scripts
│   ├── bin/                     # Binaries and executable scripts
│   │   ├── bootstrap.sh         # Script to set up new machines
│   │   └── scripts/             # Directory for personal utility scripts
│   │       ├── utilities/       # General-purpose scripts
│   │       ├── dev/             # Development-related scripts
│   │       └── network/         # Networking and automation scripts
│
├── .env                         # Encrypted environment variables (general)
│
├── .gitignore                   # Git ignore rules to manage tracked files
│
└── gpg-private-key.asc          # Backup of GPG private key (not tracked by yadm)



