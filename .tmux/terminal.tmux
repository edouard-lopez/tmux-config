# Set the default terminal mode to 256color mode
set -g default-terminal "screen-256color"  
set -as terminal-overrides ',screen-256color:Ms=\E]52;%p1%s;%p2%s\007'
set -g allow-passthrough on # Enables ANSI pass through: tmux 3.3a fix, see https://github.com/tinted-theming/base16-shell/issues/1

# make ctrl-arrow, etc. work
set-window-option -g xterm-keys on

# page Up/Down directly and enable copy mode
bind-key -T root PPage if-shell -F "#{alternate_on}" "send-keys PPage" "copy-mode -e; send-keys PPage"
bind-key -T root NPage if-shell -F "#{alternate_on}" "send-keys NPage" "copy-mode -e; send-keys NPage"

set-option -g set-titles on    # set terminal title

# Activity Monitoring:  get notified when something happens inside other windows
set-option -g visual-activity off           # Display a message instead of sending a bell
set-window-option -g monitor-activity on    # Windows with activity are highlighted in the status line
