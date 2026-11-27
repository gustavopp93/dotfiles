# Show the active Python venv in the hydro prompt, like "(cora-api) ~/D/j/c/cora-api".
# mise (python.uv_venv_auto) sets VIRTUAL_ENV but does not change the prompt.
function _venv_prompt --on-variable VIRTUAL_ENV
    if test -n "$VIRTUAL_ENV"
        set -l name (string replace --regex --filter '^prompt\s*=\s*' '' <$VIRTUAL_ENV/pyvenv.cfg 2>/dev/null)
        test -n "$name" || set name (path basename (path dirname $VIRTUAL_ENV))
        set --global hydro_symbol_start "($name) "
    else
        set --erase hydro_symbol_start
    end
end
_venv_prompt
