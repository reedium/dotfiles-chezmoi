setopt NO_CASE_GLOB

# Allow for suggesting corrections on mistyped commands/files
setopt CORRECT
setopt CORRECT_ALL

setopt auto_list     # Automatically list choices on ambiguous completion
setopt always_to_end # Move cursor to end if word had only 1 match
setopt auto_menu     # Automatically use menu completion

# AUTOCOMPLETION RELATED
# zstyles and settings should come BEFORE the compinit autoload
setopt autocd  # cd if directory (e.g. forgot 'cd' in command)

zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' # Case insensitive completion
zstyle ':completion:*' list-suffixes zstyle ':completion:*' expand prefix suffix  # Partial/fragmented completion
zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # enable approximate matches for completion

autoload -Uz compinit && compinit
