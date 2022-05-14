set -g status on

set -g status-bg black
set -g status-fg white
set -g status-position top
set -g status-justify left
set -g status-interval 2

setw -g window-status-current-format ' #I#[fg=colour250]:#[fg=colour255]#W#[fg=colour50]#F '

set -g window-status-format "#[fg=colour244,bg=colour234]#I #[fg=colour240]| #[default]#W "
set -g window-status-current-format "#[fg=colour117,bg=colour31] #I #[fg=colour231,bold]#W "
#set -g window-status-last-style fg=colour31

set -g status-left-length 30
set -g status-left '#{?client_prefix,#[fg=colour254]#[bg=colour31]#[bold],#[fg=colour16]#[bg=colour254]#[bold]} #S #{?client_prefix,#[fg=colour31]#[bg=colour234]#[nobold],#[fg=colour254]#[bg=colour234]#[nobold]} #(whoami) '

set -g status-right-length 150
set -g status-right '#[bg=yellow, fg=black] #(cut -d " " -f 1-3 /proc/loadavg) #[fg=colour254,bg=black] #[fg=colour233,bg=colour241,bold] %d/%m #[fg=colour254,bg=black] #[fg=colour233,bg=colour245,bold] %H:%M '
