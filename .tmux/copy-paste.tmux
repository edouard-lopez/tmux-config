# copy mouse selection on Mouse up: https://www.terminal.guide/tools/multiplexer/tmux/copy-mode-guide/
bind -T copy-mode-vi MouseDragEnd1Pane send-keys -X copy-pipe-and-cancel "xclip -selection clipboard" 

# copy selection using [Enter]
unbind Enter; bind -T copy-mode-vi Enter send-keys -X copy-pipe-and-cancel 'xclip -in -selection clipboard' 
