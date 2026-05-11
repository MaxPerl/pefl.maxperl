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
export XDG_DATA_DIRS="$APP_DIR/usr/share:/usr/local/share:/usr/share"
export XDG_RUNTIME_DIR="$APP_CACHE"

export ELM_PREFIX="$APP_DIR"
export ELM_BIN_DIR="$APP_DIR/bin"
export ELM_LIB_DIR="$APP_DIR/lib/aarch64-linux-gnu"
export ELM_DATA_DIR="$APP_DIR/share/elementary"
export ELM_LOCALE_DIR="$APP_DIR/share/locale"

export LD_LIBRARY_PATH="$APP_DIR/lib/aarch64-linux-gnu:$APP_DIR/lib/aarch64-linux-gnu:${LD_LIBRARY_PATH:-}"
export PERL5LIB="$APP_DIR/lib/aarch64-linux-gnu/perl5:$APP_DIR/share/perl5:${PERL5LIB:-}"

exec "$APP_DIR/bin/elementary_config" "$@" 
