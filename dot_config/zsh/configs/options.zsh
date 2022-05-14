setopt NO_CASE_GLOB


# AUTOCOMPLETION RELATED
# zstyles and settings should come BEFORE the compinit autoload
zstyle ':completion:*' completer _expand _complete _correct _approximate _history
zstyle ':completion:*' matcher-list '' '' 'l:|=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' users root
zstyle ':completion:*' menu select
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
autoload -U colors && colors
compinit


# Other Options
unsetopt beep
setopt no_beep
setopt autocd       # cd if directory (e.g. forgot 'cd' in command)

setopt auto_menu        # Automatically use menu completion
setopt auto_list        # Automatically list choices on ambiguous completion
setopt list_rows_first  # List autocompletions horizontally rather than vertically
setopt always_to_end    # Move cursor to end if word had only 1 match

setopt no_hup           # Allow backgrounding

# Allow for suggesting corrections on mistyped commands/files
setopt CORRECT
setopt CORRECT_ALL
