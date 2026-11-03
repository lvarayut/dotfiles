# dotfiles

Shell, git, vim and IdeaVim configuration for macOS.

## Install on a new machine

```bash
git clone https://github.com/lvarayut/dotfiles ~/dotfiles
~/dotfiles/install.sh
```

The script symlinks every dotfile into `$HOME` (existing files are moved to
`~/.dotfiles_backup/<timestamp>`), installs oh-my-zsh with the
`zsh-autosuggestions` and `zsh-syntax-highlighting` plugins, installs
`pure`, `tmux` and `vim` through Homebrew, and sets up Vundle. It is safe
to run again.

Afterwards:

```bash
vim +PluginInstall +qall
```

## Machine-specific settings

Anything that belongs to one machine or one employer stays out of the repo:

| File                 | Loaded by     | Put here                                        |
| -------------------- | ------------- | ----------------------------------------------- |
| `~/.zshrc.local`     | `.zshrc`      | work tooling, SDK paths, license servers        |
| `~/.zprofile.local`  | `.zprofile`   | extra `PATH` entries (Docker, JetBrains Toolbox) |
| `~/.gitconfig.local` | `.gitconfig`  | work identity, LFS, `maintenance` repos         |

`install.sh` creates each of them from the matching `*.example` file if it
does not exist yet.

## Layout

| Path             | What                                                      |
| ---------------- | --------------------------------------------------------- |
| `.zshrc`         | oh-my-zsh, pure prompt, sources `.aliases` and `.functions` |
| `.zprofile`      | `brew shellenv`, cargo                                    |
| `.aliases`       | shell and git aliases                                     |
| `.functions`     | shell functions                                           |
| `.gitconfig`     | git defaults and aliases (`git lg`, `git l`, ...)         |
| `.gitignore`     | global ignore file (`core.excludesfile`)                  |
| `.vimrc`         | sources `.vim/startup/*.vim`                              |
| `.ideavimrc`     | IdeaVim for JetBrains IDEs                                |
| `.tmux.conf`     | tmux                                                      |
| `.editorconfig`  | default indentation and line endings                      |
| `.prettierrc`    | prettier defaults                                         |
