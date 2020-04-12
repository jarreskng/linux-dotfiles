#-----------------------------------------------------------------------
#			  functions
#-----------------------------------------------------------------------

function ensure_dir() {
    [ -d "$1" ] || mkdir --mode="0700" --parents "$1"
}

function ensure_file() {
    [ -f "$1" ] || install --mode "0600" /dev/null "$1"
}

#-----------------------------------------------------------------------
#			  directories
#-----------------------------------------------------------------------

ensure_dir "${XDG_CONFIG_HOME}"
ensure_dir "${XDG_DATA_HOME}"
ensure_dir "${XDG_CACHE_HOME}"

ensure_dir "${MAILBOX_STORE_DIR}"
ensure_dir "${PASSWORD_STORE_DIR}"

ensure_dir "${XDG_DATA_HOME}/zsh"
ensure_dir "${XDG_DATA_HOME}/less"
