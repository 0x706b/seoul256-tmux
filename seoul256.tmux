#!/usr/bin/env bash
_current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
__load() {
   tmux source-file "$_current_dir/seoul256-theme.conf"
}
