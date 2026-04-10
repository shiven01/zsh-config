# File Traversing:
alias lha='ls -lAh'
alias symlink='ln -sfvn'
alias ..='cd ..'
alias ...='cd ../..'

# Shortcuts
alias ccview='cclogviewer -input' ## https://github.com/Brads3290/cclogviewer
## ~/Zed → ~/Library/Application Support/Zed (symlink)

# Git Configs:
trace() {
  GIT_TRACE=1 eval "$@"
}
alias gst='git status'
alias gck='git checkout'
alias gb='git branch'
alias gp='git pull'
alias gc='git commit'
alias ga='git add'


# Zsh Autocompletions (brew)
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
fi

export PATH="/opt/homebrew/opt/python@3.14/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/shivenshekar/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# fnm
eval "$(fnm env --use-on-cd --shell zsh)"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
