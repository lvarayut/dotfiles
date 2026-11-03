#!/usr/bin/env bash
# Symlink the dotfiles in this repo into $HOME and install the few
# things the shell and vim config depend on. Safe to re-run.
set -euo pipefail

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP="$HOME/.dotfiles_backup/$(date +%Y%m%d-%H%M%S)"

FILES=(
  .aliases
  .functions
  .editorconfig
  .gitattributes
  .gitconfig
  .gitignore
  .ideavimrc
  .prettierrc
  .tmux.conf
  .vimrc
  .zprofile
  .zshrc
)

info()  { printf '\033[1;34m==>\033[0m %s\n' "$*"; }
ok()    { printf '\033[1;32m  ✓\033[0m %s\n' "$*"; }

link() {
  local src="$1" dst="$2"
  if [ -L "$dst" ] && [ "$(readlink "$dst")" = "$src" ]; then
    ok "$dst already linked"
    return
  fi
  if [ -e "$dst" ] || [ -L "$dst" ]; then
    mkdir -p "$BACKUP/$(dirname "${dst#$HOME/}")"
    mv "$dst" "$BACKUP/${dst#$HOME/}"
    ok "backed up existing $dst"
  fi
  mkdir -p "$(dirname "$dst")"
  ln -s "$src" "$dst"
  ok "$dst -> $src"
}

info "Linking dotfiles"
for f in "${FILES[@]}"; do
  link "$DOTFILES/$f" "$HOME/$f"
done
link "$DOTFILES/.vim/startup" "$HOME/.vim/startup"

info "Creating machine-local files (not tracked)"
for f in .zshrc.local .zprofile.local .gitconfig.local; do
  if [ ! -e "$HOME/$f" ]; then
    cp "$DOTFILES/$f.example" "$HOME/$f"
    ok "created $HOME/$f from example, edit it for this machine"
  else
    ok "$HOME/$f exists, left alone"
  fi
done

info "Shell dependencies"
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc
  ok "installed oh-my-zsh"
else
  ok "oh-my-zsh present"
fi
ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"
for plugin in zsh-autosuggestions zsh-syntax-highlighting; do
  if [ ! -d "$ZSH_CUSTOM/plugins/$plugin" ]; then
    git clone --depth 1 "https://github.com/zsh-users/$plugin" "$ZSH_CUSTOM/plugins/$plugin"
    ok "installed $plugin"
  else
    ok "$plugin present"
  fi
done

if command -v brew >/dev/null 2>&1; then
  for pkg in pure tmux vim; do
    if ! brew list --formula "$pkg" >/dev/null 2>&1; then
      brew install "$pkg"
    else
      ok "$pkg present"
    fi
  done
else
  echo "  ! Homebrew not found. Install it from https://brew.sh then re-run for pure/tmux/vim."
fi

info "Vim plugins (Vundle)"
if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
  git clone --depth 1 https://github.com/VundleVim/Vundle.vim.git "$HOME/.vim/bundle/Vundle.vim"
  ok "installed Vundle"
else
  ok "Vundle present"
fi
echo "  Run: vim +PluginInstall +qall   to fetch the plugins listed in .vim/startup/vundle.vim"

info "Done"
[ -d "$BACKUP" ] && echo "  Previous files were moved to $BACKUP"
echo "  Open a new terminal or run: exec zsh"
