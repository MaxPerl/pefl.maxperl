#!/bin/sh
set -eu

APP_DIR="/opt/click.ubuntu.com/pefl.maxperl/current"
APP_ID="pefl.maxperl"

APP_HOME="/home/phablet/.local/share/${APP_ID}"
APP_CACHE="/home/phablet/.cache/${APP_ID}"
APP_CONFIG="/home/phablet/.config/${APP_ID}"

mkdir -p "$APP_HOME" "$APP_CACHE" "$APP_CONFIG"
mkdir -p "$APP_HOME/.cache/efreet"
mkdir -p "$APP_HOME/.elementary/config"

export HOME="$APP_HOME"
export XDG_DATA_HOME="$APP_HOME/.local/share"
export XDG_CACHE_HOME="$APP_CACHE"
export XDG_CONFIG_HOME="$APP_CONFIG"
export XDG_DATA_DIRS="$APP_DIR/share:/usr/local/share:/usr/share"

export ELM_PREFIX="$APP_DIR"
export EPREFIX="$APP_DIR"
export ELM_BIN_DIR="$APP_DIR/bin"
export E_BIN_DIR="$APP_DIR/bin"
export ELM_LIB_DIR="$APP_DIR/lib/aarch64-linux-gnu"
export E_LIB_DIR="$APP_DIR/lib/aarch64-linux-gnu"
export ELM_DATA_DIR="$APP_DIR/share/elementary"
export E_DATA_DIR="$APP_DIR/share/elementary"
export ELM_LOCALE_DIR="$APP_DIR/share/locale"
export E_LOCALE_DIR="$APP_DIR/share/locale"
export ELM_DISPLAY="x11"

export LD_LIBRARY_PATH="$APP_DIR/lib/aarch64-linux-gnu:${LD_LIBRARY_PATH:-}"

exec "$APP_DIR/elementary_config" "$@" 
