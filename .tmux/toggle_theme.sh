#!/bin/bash

_toggle_theme() {
    if [[ $TMUX_ACTIVE_THEME == "light" ]]; then
        TMUX_ACTIVE_THEME="base16-tomorrow-night"
    else
        TMUX_ACTIVE_THEME="base16-tomorrow"
    fi

    tmux set-environment -u TMUX_ACTIVE_THEME 
    tmux set-environment TMUX_ACTIVE_THEME "$TMUX_ACTIVE_THEME"
    tmux source $HOME/.tmux/plugins/base16-tmux/colors/"$TMUX_ACTIVE_THEME".tmux
    tmux display "switching theme to: $TMUX_ACTIVE_THEME"
}

_toggle_theme
