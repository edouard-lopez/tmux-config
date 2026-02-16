# Set the default terminal mode to 256color mode
set-option -g default-terminal "tmux-256color" # override tmux-sensible value

## enable undercurl
# https://github.com/AstroNvim/AstroNvim/issues/1336#issuecomment-1317609457
#set -g default-terminal "alacritty"
#set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'
#set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'
## color correction
# https://github.com/tmux/tmux/wiki/FAQ#how-do-i-use-rgb-colour
#set -as terminal-features ",alacritty*:RGB"
#set -as terminal-overrides ",alacritty*:Tc"
#set -as terminal-overrides '*:Ss=\E[%p1%d q:Se=\E[ q' # pipe cursor in vim insert mode

# make ctrl-arrow, etc. work
set-window-option -g xterm-keys on

# page Up/Down directly and enable copy mode
bind-key -T root PPage if-shell -F "#{alternate_on}" "send-keys PPage" "copy-mode -e; send-keys PPage"
bind-key -T root NPage if-shell -F "#{alternate_on}" "send-keys NPage" "copy-mode -e; send-keys NPage"

set-option -g set-titles on    # set terminal title

# Activity Monitoring:  get notified when something happens inside other windows
set-option -g visual-activity off           # Display a message instead of sending a bell
set-window-option -g monitor-activity on    # Windows with activity are highlighted in the status line
