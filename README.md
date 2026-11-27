# Gustavo's dotfiles

Managed with [chezmoi](https://www.chezmoi.io/). The repo is the chezmoi source directory:
`private_dot_config/` becomes `~/.config/`.

### Set up a new machine

```bash
brew install chezmoi   # Linux: see https://www.chezmoi.io/install/
git clone git@github.com:gustavopp93/dotfiles.git ~/Developer/personal/dotfiles
mkdir -p ~/.config/chezmoi
echo 'sourceDir = "~/Developer/personal/dotfiles"' > ~/.config/chezmoi/chezmoi.toml
chezmoi diff    # check what will change
chezmoi apply
```

On Linux, `.chezmoiignore` skips the macOS-only tools (aerospace, borders, sketchybar).

### Daily use

```bash
chezmoi edit ~/.config/fish/config.fish   # edit in the repo, then `chezmoi apply`
chezmoi re-add                            # you edited ~/.config directly: copy the changes back to the repo
chezmoi add ~/.config/<tool>/<file>       # add a new file
chezmoi diff                              # compare the repo and ~/.config
```

Then commit and push from `~/Developer/personal/dotfiles` (or use `chezmoi cd`).

### Sensible macOS defaults

When setting up a new Mac, you may want to set some sensible macOS defaults:

```bash
./.macos
```

### Tooling
- aerospace (macOS)
- bat
- borders (macOS)
- btop
- fish
- ghostty
- git
- mise
- nvim
- rex
- sketchybar (macOS)

### Fish

Only the personal files are in the repo. Plugins come from `fish_plugins`.
`chezmoi apply` installs them with [Fisher](https://github.com/jorgebucaran/fisher)
(`run_onchange_after_install-fish-plugins.sh.tmpl`). The script runs again only when `fish_plugins` changes.

### Python venvs

mise activates the `.venv` of a uv project (a directory with `uv.lock`) when you `cd` into it
(`python.uv_venv_auto` in `mise/config.toml`). uv manages Python itself, not mise.
