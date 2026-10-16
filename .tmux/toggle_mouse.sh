#!/bin/bash

_toggle_mouse() {
  old=$(tmux show -gv mouse)
  new=""

  if [[ "$old" == "on" ]]; then
    new="off"
  else
    new="on"
  fi

  tmux set-option -g mouse $new \; display "mouse: $new"
  set -g focus-follows-mouse on
}

_toggle_mouse