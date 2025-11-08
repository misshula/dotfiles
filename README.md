David Misshula’s dotfiles (macOS + Spin-compatible)

Uses `zsh` with [Antigen](https://github.com/zsh-users/antigen) to manage [oh-my-zsh](https://ohmyz.sh/) plugins and themes.
Theme is set in `personal/antigen_bundles.zsh` (currently `candy`).

**First-Time Install (new Mac)**
- Install Xcode Command Line Tools (for `git`): `xcode-select --install`
- Optional but recommended: install Homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- Optional packages used by this setup:
  - `brew install coreutils` (provides `gdircolors` for custom `dircolors`)
  - `brew install ripgrep` (better search; powers the `ripgrep` plugin)
- Clone into `~/dotfiles`: `git clone https://github.com/misshula/dotfiles.git ~/dotfiles`
- Run the installer: `~/dotfiles/install.sh`
  - Symlinks `~/.zshrc`, `~/.gitconfig`, and `~/.gitignore_global` (overwrites existing files)
  - Installs Antigen if missing
- Start a new terminal or run `exec zsh`. Antigen will fetch plugins/theme on first launch.

**Spin Notes**
- On Spin, `install.sh` moves the generated `~/.gitconfig` to `~/.gitconfig.local` and links the repo’s `~/.gitconfig`.
- Installs `ripgrep` via `apt-get` on Spin.

**What’s Included**
- `core/` framework files. Generally leave these unchanged.
- `personal/` customizations that are yours to edit safely:
  - `environment.zsh` – environment variables
  - `macos.zsh` – macOS-specific tweaks
  - `antigen_bundles.zsh` – extra plugins and theme
  - `dircolors` – custom LS colors (uses `gdircolors` if present)
  - `spin.zsh` – Spin-only tweaks
  - `aliases.zsh` – personal aliases
  - `custom.zsh` – loaded last; overrides take effect here
  - `install.sh` – runs at the end of the main installer for any extra setup

**Updating**
- Pull latest from this repo in `~/dotfiles`: `git pull --rebase`

**Tips**
- `~/.zshrc` is a symlink to this repo; edit files here and reload the shell.
- Per-machine tweaks can go in `~/extra.zsh` (untracked).
