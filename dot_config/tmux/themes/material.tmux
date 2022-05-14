# Original Source: https://github.com/mit17k/tmux-material-dark-theme/blob/master/tmux-onedark-theme.tmux
material_dark_black="#292929"
material_dark_blue="#82aaff"
material_dark_yellow="#ffcb6b"
material_dark_red="#f07178"
material_dark_white="#B0BEC5"
material_dark_green="#c3e88d"
material_dark_visual_grey="#3F3F3F"
material_dark_comment_grey="#5c6370"

set -g "status" "on"
set -g "status-justify" "left"

set -g "status-left-length" "100"
set -g "status-right-length" "100"
set -g "status-right-attr" "none"

set -g "message-fg" "$material_dark_white"
set -g "message-bg" "$material_dark_black"

set -g "message-command-fg" "$material_dark_white"
set -g "message-command-bg" "$material_dark_black"

set -g "status-attr" "none"
set -g "status-left-attr" "none"

setw -g "window-status-fg" "$material_dark_black"
setw -g "window-status-bg" "$material_dark_black"
setw -g "window-status-attr" "none"

setw -g "window-status-activity-bg" "$material_dark_black"
setw -g "window-status-activity-fg" "$material_dark_black"
setw -g "window-status-activity-attr" "none"

setw -g "window-status-separator" ""

set -g "window-style" "fg=$material_dark_comment_grey"
set -g "window-active-style" "fg=$material_dark_white"

set -g "pane-border-fg" "$material_dark_white"
set -g "pane-border-bg" "$material_dark_black"
set -g "pane-active-border-fg" "$material_dark_green"
set -g "pane-active-border-bg" "$material_dark_black"

set -g "display-panes-active-colour" "$material_dark_yellow"
set -g "display-panes-colour" "$material_dark_blue"

set -g "status-bg" "$material_dark_black"
set -g "status-fg" "$material_dark_white"

set -g "@prefix_highlight_fg" "$material_dark_black"
set -g "@prefix_highlight_bg" "$material_dark_green"
set -g "@prefix_highlight_copy_mode_attr" "fg=$material_dark_black,bg=$material_dark_green"
set -g "@prefix_highlight_output_prefix" "  "

set -g "status-left" "#[fg=$material_dark_black,bg=$material_dark_green,bold] #S #{prefix_highlight}#[fg=$material_dark_green,bg=$material_dark_black,nobold,nounderscore,noitalics]"

set -g status-right ' #(cut -d " " -f 1-3 /proc/loadavg)  #[fg=colour233,bg=colour241,bold] %d/%m #[fg=colour254,bg=black] #[fg=colour233,bg=colour245,bold] %H:%M '
set -g status-right-length 150

set -g "window-status-format" "#[fg=$material_dark_black,bg=$material_dark_black,nobold,nounderscore,noitalics]#[fg=$material_dark_white,bg=$material_dark_black] #I  #W #[fg=$material_dark_black,bg=$material_dark_black,nobold,nounderscore,noitalics]"
set -g "window-status-current-format" "#[fg=$material_dark_black,bg=$material_dark_visual_grey,nobold,nounderscore,noitalics]#[fg=$material_dark_white,bg=$material_dark_visual_grey,nobold] #I  #W #[fg=$material_dark_visual_grey,bg=$material_dark_black,nobold,nounderscore,noitalics]"
