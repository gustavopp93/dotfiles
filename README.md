# Gustavo's dotfiles

### Sensible macOS defaults

When setting up a new Mac, you may want to set some sensible macOS defaults:

```bash
./.macos
```

### Tooling
- aerospace
- bat
- borders
- btop
- fish
- ghostty
- nvim
- rex
- sketchybar

### Fish

Only the personal files are in `fish/`. Plugins come from `fish_plugins`.
After you copy the files to `~/.config/fish`, install the plugins with [Fisher](https://github.com/jorgebucaran/fisher):

```fish
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher update
```
