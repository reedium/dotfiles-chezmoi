set -g status 'on'
set -g status-position top
set -g status-bg 'colour235'
set -g status-justify 'centre'
set -g status-left-length '100'
set -g status-right-length '100'
set -g message-style fg='colour222',bg='colour238'
set -g message-command-style fg='colour222',bg='colour238'
set -g pane-border-style fg='colour238'
set -g pane-active-border-style fg='colour202'

setw -g window-status-activity-style fg='colour202',bg='colour235',none
setw -g window-status-separator ''
setw -g window-status-style fg='colour172',bg='colour235',none

set -g status-left '#[fg=colour232,bg=colour202] #S #[fg=colour202,bg=colour238,nobold,nounderscore,noitalics]#[fg=colour222,bg=colour238] #W #[fg=colour238,bg=colour235,nobold,nounderscore,noitalics]#[fg=colour172,bg=colour235] #(whoami) #[fg=colour235,bg=colour235,nobold,nounderscore,noitalics]'
set -g status-right '#[fg=colour235,bg=colour235,nobold,nounderscore,noitalics]#[fg=colour172,bg=colour235] %r  %a  %Y #[fg=colour238,bg=colour235,nobold,nounderscore,noitalics]#[fg=colour222,bg=colour238] #H #[fg=colour202,bg=colour238,nobold,nounderscore,noitalics]#[fg=colour232,bg=colour202] #(rainbarf --battery --remaining --no-rgb) '

setw -g window-status-format '#[fg=colour235,bg=colour235,nobold,nounderscore,noitalics]#[default] #I  #W #[fg=colour235,bg=colour235,nobold,nounderscore,noitalics]'
setw -g window-status-current-format '#[fg=colour235,bg=colour238,nobold,nounderscore,noitalics]#[fg=colour222,bg=colour238] #I  #W #[fg=colour238,bg=colour235,nobold,nounderscore,noitalics]'
