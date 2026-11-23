if status is-interactive
    # Commands to run in interactive sessions can go here
end
# fnm config
fnm env --use-on-cd --shell fish | source
# ASDF configuration code
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end
# Do not use fish_add_path (added in Fish 3.2) because it
# potentially changes the order of items in PATH
if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims
# fvm
fish_add_path $HOME/fvm/default/bin
fish_add_path $HOME/.pub-cache/bin

# psql
fish_add_path /opt/homebrew/opt/libpq/bin

# WeasyPrint dependencies (GTK/Pango libraries)
set -gx DYLD_FALLBACK_LIBRARY_PATH /opt/homebrew/lib

# gcloud
set -gx CLOUDSDK_PYTHON /opt/homebrew/opt/python@3.13/bin/python3.13
fish_add_path /opt/homebrew/share/google-cloud-sdk/bin

# podman
set -gx PODMAN_COMPOSE_WARNING_LOGS false

fish_config theme choose catppuccin-mocha

# chofex
fish_add_path '/Users/gustavopajuelopardo/.chofex/bin'
