# -------------------------------------------------------------------
# OH-MY-ZSH
# -------------------------------------------------------------------
export ZSH="$HOME/.oh-my-zsh"

# Theme is handled by pure (see below), so leave oh-my-zsh's empty.
ZSH_THEME=""

# Plugins: standard ones live in $ZSH/plugins, custom ones in
# $ZSH_CUSTOM/plugins (zsh-autosuggestions and zsh-syntax-highlighting
# are installed there by install.sh).
plugins=(git node npm docker zsh-autosuggestions zsh-syntax-highlighting z)

source $ZSH/oh-my-zsh.sh

# -------------------------------------------------------------------
# PROMPT (pure)
# -------------------------------------------------------------------
# Installed with: brew install pure  (or: npm install -g pure-prompt)
if [ -d "$(brew --prefix 2>/dev/null)/share/zsh/site-functions" ]; then
  fpath+=("$(brew --prefix)/share/zsh/site-functions")
fi
if [ -d "$(brew --prefix 2>/dev/null)/lib/node_modules/pure-prompt/functions" ]; then
  fpath+=("$(brew --prefix)/lib/node_modules/pure-prompt/functions")
fi
autoload -U promptinit; promptinit
prompt pure 2>/dev/null

# -------------------------------------------------------------------
# GENERAL SETTINGS
# -------------------------------------------------------------------
# Source all separated files
source $HOME/.aliases
source $HOME/.functions

# Auto-suggestions: Ctrl+Space executes the suggestion
bindkey '^ ' autosuggest-execute

# Make auto-suggestion text visible in the solarized theme
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'

# Tmux
[ -z "$TMUX" ] && export TERM=xterm-256color

# Disable control flow (C-s, C-q)
stty -ixon -ixoff

# iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# -------------------------------------------------------------------
# MACHINE-SPECIFIC SETTINGS
# -------------------------------------------------------------------
# Anything tied to one machine or employer (license servers, work
# tooling, SDK paths, tool-generated snippets) goes in ~/.zshrc.local,
# which is not tracked. See .zshrc.local.example.
[ -f "$HOME/.zshrc.local" ] && source "$HOME/.zshrc.local"
