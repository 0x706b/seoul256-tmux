#!/usr/bin/env bash
seoul256_bg0="#171717"
seoul256_magenta="#9A7372"
seoul256_bg1="#333233"
seoul256_bg2="#3f3f3f"
seoul256_bg3="#4b4b4b"
seoul256_lightpurple="#999ABD"
seoul256_black="#171717"
seoul256_fg0="#d0d0d0"
seoul256_lightgreen="#98BC99"

get() {
   local option=$1
   local default_value=$2
   local option_value="$(tmux show-option -gqv "$option")"

   if [ -z "$option_value" ]; then
      echo "$default_value"
   else
      echo "$option_value"
   fi
}

set() {
   local option=$1
   local value=$2
   tmux set-option -gq "$option" "$value"
}

setw() {
   local option=$1
   local value=$2
   tmux set-window-option -gq "$option" "$value"
}

set "status-bg" "$seoul256_bg0"

set "status-left" "#[fg=$seoul256_black,bg=$seoul256_magenta] #S #[fg=$seoul256_magenta,bg=$seoul256_bg0,nobold,noitalics,nounderscore]"
set "status-right" "#[fg=$seoul256_bg1,bg=$seoul256_bg0,nobold,noitalics,nounderscore]#[fg=$seoul256_fg0,bg=$seoul256_bg1] %Y-%m-%d #[fg=$seoul256_fg0,bg=$seoul256_bg1,nobold,noitalics,nounderscore]#[fg=$seoul256_fg0,bg=$seoul256_bg1] %H:%M #[fg=$seoul256_lightpurple,bg=$seoul256_bg1,nobold,noitalics,nounderscore]#[fg=$seoul256_black,bg=$seoul256_lightpurple] #(curl icanhazip.com)"

set "window-status-format" "#[fg=$seoul256_bg0,bg=$seoul256_bg1,nobold,noitalics,nounderscore] #[fg=$seoul256_fg0,bg=$seoul256_bg1]#I #[fg=$seoul256_fg0,bg=$seoul256_bg1,nobold,noitalics,nounderscore] #[fg=$seoul256_fg0,bg=$seoul256_bg1]#W #F #[fg=$seoul256_bg1,bg=$seoul256_bg0,nobold,noitalics,nounderscore]"

set "window-status-current-format" "#[fg=$seoul256_bg0,bg=$seoul256_bg3,nobold,noitalics,nounderscore] #[fg=$seoul256_fg0,bg=$seoul256_bg3]#I #[fg=$seoul256_fg0,bg=$seoul256_bg3,nobold,noitalics,nounderscore] #[fg=$seoul256_fg0,bg=$seoul256_bg3]#W #F #[fg=$seoul256_bg3,bg=$seoul256_bg0,nobold,noitalics,nounderscore]"

set "window-status-separator" ""
