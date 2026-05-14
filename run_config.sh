#!/bin/sh
set -eu

APP_DIR="/opt/click.ubuntu.com/pefl.maxperl/current"
APP_ID="pefl.maxperl"

APP_HOME="/home/phablet/.local/share/${APP_ID}"
APP_CACHE="/home/phablet/.cache/${APP_ID}"
APP_CONFIG="/home/phablet/.config/${APP_ID}"

export XDG_DATA_DIRS="$APP_DIR/share:/usr/local/share:/usr/share"

export E_PREFIX="$APP_DIR"
export E_BIN_DIR="$APP_DIR/bin"
export E_LIB_DIR="$APP_DIR/lib/aarch64-linux-gnu"
export E_DATA_DIR="$APP_DIR/share/elementary"
export E_LOCALE_DIR="$APP_DIR/share/locale"

exec "$APP_DIR/bin/elementary_config" "$@" 
