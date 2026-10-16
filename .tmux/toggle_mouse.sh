#!/bin/bash

_toggle_mouse() {
  old=$(tmux show -gv mouse)
  status=""

  if [[ "$old" == "on" ]]; then
    status="off"
  else
    status="on"
  fi

  tmux set-option -g mouse "$status"
  message="mouse: $status"
  tmux display-message "$message"
}

_toggle_mouse