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
alias ll="ls -la"

alias gs="git status"
alias gp="git pull"
alias gc="git commit -m"

alias src="source ~/.config/.zshrc"