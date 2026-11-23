if status is-interactive
    # Commands to run in interactive sessions can go here
end
# mise (node, ruby): https://mise.jdx.dev
mise activate fish | source
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
