set-option -g status on         # Enable status bar 
bind-key b set-option status    # Toggle status bar visibility

# Status bar left part
set-option -g status-right-length 10
set-option -g status-left "#{host}❯ "

# Window's Tab
set-window-option -g window-status-format '#{window_index}:#{window_name}'

# Active Window's Tab
set-window-option -g window-status-current-format '[#{window_index}:#{window_name}]'

# Status bar right part
set-option -g @batt_icon_status_charged "$EMPTY"
set-option -g @batt_icon_status_charging "$TEXT_WARNING🗲$TEXT_RESET"  # 🗲⚡🔌▴↻↺
set-option -g @batt_icon_status_discharging '📉'
set-option -g @batt_icon_status_attached "$TEXT_SUCCESS🔌$TEXT_RESET"  #
set-option -g @batt_icon_status_unknown "$EMPTY"
set-option -g @batt_remain_short 'true'
set-option -g @batt_icon_charge_tier8 "$EMPTY"
set-option -g @batt_icon_charge_tier7 "$EMPTY"
set-option -g @batt_icon_charge_tier6 "$EMPTY"
set-option -g @batt_icon_charge_tier5 "$EMPTY"
set-option -g @batt_icon_charge_tier4 "$EMPTY"
set-option -g @batt_icon_charge_tier3 "$EMPTY"
set-option -g @batt_icon_charge_tier2 "$TEXT_WARNING💣$TEXT_RESET"
set-option -g @batt_icon_charge_tier1 "$TEXT_DANGER💣$TEXT_RESET"  # '⬇⬆↯🔋'

set-option -g status-right-length 60
set-option -g status-right '#{network_bandwidth} | #{battery_icon}#{battery_percentage} | %a %d %b ⌚ %H:%M'