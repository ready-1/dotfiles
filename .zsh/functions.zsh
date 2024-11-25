# ~/.zsh/functions.zsh
# Custom shell functions

function mkcd {
    mkdir -p "$1" && cd "$1"
}

function extract {
    case "$1" in
        *.tar.gz) tar -xvzf "$1" ;;
        *.zip) unzip "$1" ;;
        *.rar) unrar x "$1" ;;
        *) echo "Unknown file type: $1" ;;
    esac
}
