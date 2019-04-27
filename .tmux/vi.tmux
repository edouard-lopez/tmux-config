# VI Configuration

set-option -g status-keys vi

# Vim-style copy/paste
set-window-option -g mode-keys vi

# Allow mouse interaction
bind m run "bash $HOME/.tmux/toggle-mouse.sh"
set -g mouse on
bind [ copy-mode  # enable vi copy-mode

# copy selection using [Enter]
unbind Enter; bind -T copy-mode-vi Enter send-keys -X copy-pipe-and-cancel 'xclip -in -selection clipboard'