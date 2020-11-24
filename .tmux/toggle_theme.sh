#!/bin/bash

_toggle_theme() {
    if [[ $TMUX_ACTIVE_THEME == "light" ]]; then
        TMUX_ACTIVE_THEME="dark"
    else
        TMUX_ACTIVE_THEME="light"
    fi

    tmux set-environment -u TMUX_ACTIVE_THEME 
    tmux set-environment TMUX_ACTIVE_THEME "$TMUX_ACTIVE_THEME"
    tmux source $HOME/.tmux/theme-"$TMUX_ACTIVE_THEME".tmux
    tmux source $HOME/.tmux.conf
    tmux display "switching theme to: $TMUX_ACTIVE_THEME"
}

_toggle_theme
