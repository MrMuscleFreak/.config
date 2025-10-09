export LESS_TERMCAP_md=$'\e[01;31m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_us=$'\e[01;32m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;44;33m'
export LESS_TERMCAP_se=$'\e[0m'


# Initialize Starship prompt
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"

# Enable syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Enable autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Function to create and navigate into a directory in one command
mkcd() {
  mkdir -p "$1" && cd "$1"
}

# Alias definitions
alias ls="lsd"
alias ll="lsd -l"
alias la="lsd -a"

alias gs="git status"
alias gp="git pull"
alias gc="git commit -m"

alias src="source ~/.zshrc"