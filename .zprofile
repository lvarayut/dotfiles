# Login-shell setup. Keep this file small: PATH entries that every shell
# needs, nothing interactive.

# Homebrew (Apple Silicon puts it under /opt/homebrew, Intel under /usr/local)
if [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -x /usr/local/bin/brew ]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

# Rust
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

# Machine-specific PATH additions (Docker Desktop, JetBrains Toolbox, work tools)
[ -f "$HOME/.zprofile.local" ] && . "$HOME/.zprofile.local"
