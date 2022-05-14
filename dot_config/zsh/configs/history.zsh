setopt extended_history       # Give timestamp and time to run in history file
setopt share_history          # Share history between different shell instances
setopt inc_append_history     # Add commands to history as entered, not at shell exit
setopt hist_ignore_all_dups   # Ignore duplicates
setopt hist_find_no_dups      # Ignore duplicates when searching
setopt hist_reduce_blanks     # Hide blank lines
setopt hist_ignore_space      # Ignore commands in history beginning with a space
setopt hist_expire_dups_first # Expire duplicate entries first
setopt hist_verify            # Do not submit history searches before allowing for editing

#HISTCONTRO=ignoreboth:erasedups # Ignore duplicates in the history and commands starting with space
HISTSIZE=10000
SAVEHIST=10000
