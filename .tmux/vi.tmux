# VI Configuration

set-option -g status-keys vi
# Vim-style copy/paste
set-window-option -g mode-keys vi
unbind [; bind y copy-mode
unbind p; bind p paste-buffer