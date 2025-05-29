# Open file in iA Writer
ia() {
    open -a "iA Writer" "$1"
}

# Open File
# .e.g. openwith "TextEdit" "~/Document.txt"
openwith() {
    if [[ -z "$1" ]]; then
        echo "Usage: openwith [AppName] <FilePath>"
        return 1
    fi

    if [[ -n "$2" ]]; then
        local app="$1"
        shift
        open -a "$app" "$@"
    else
        # Only one argument: treat it like normal "open"
        open "$1"
    fi
}

# Autocomplete app & file names for openwith
_openwith_completion() {
  if [[ ${CURRENT} -eq 2 ]]; then
    # When completing first argument (app name)
    compadd -- /Applications/*.app(:t:r)
  else
    # When completing second (or later) argument (file paths)
    _files
  fi
}
compdef _openwith_completion openwith
