# bindkey -v  # vim bindings

# History Mapping
bindkey '^R' history-incremental-search-backward

# Use Shift+Tab for reverse completion
bindkey '^[[Z' reverse-menu-complete

# Use Alt+. for last argument
bindkey '\e.' insert-last-word

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

case "${TERM}" in
    (cons25*|linux)
        bindkey '^[[1~'   beginning-of-line   # HOME
        bindkey '^[[4~'   end-of-line         # END
        bindkey '\e[5~'   delete-char         # DELETE
        bindkey '\e[A' up-line-or-beginning-search      # UP
        bindkey '\e[B' down-line-or-beginning-search    # DOWN
    ;;
    (*xterm*)
        bindkey '\e[H'    beginning-of-line   # HOME
        bindkey '\e[F'    end-of-line         # END
        bindkey '\e[1~'   beginning-of-line   # HOME (Workaround for screen under tmux)
        bindkey '\e[4~'   end-of-line         # END (Workaround for screen under tmux)
        bindkey '\e[3~'   delete-char         # DELETE
        bindkey '\e[1;5C' forward-word        # CTRL+RIGHT
        bindkey '\e[1;5D' backward-word       # CTRL+LEFT
        bindkey '^[[A' history-beginning-search-backward    # UP
        bindkey '^[[B' history-beginning-search-forward     # DOWN
    ;;
    (screen*)
        bindkey '^[[1~'   beginning-of-line   # HOME
        bindkey '^[[4~'   end-of-line         # END
        bindkey '\e[3~'   delete-char         # DELETE
        bindkey '\eOc'    forward-word        # CTRL+RIGHT
        bindkey '\eOd'    backward-word       # CTRL+LEFT
        bindkey '^[[1;5C' forward-word        # CTRL+RIGHT
        bindkey '^[[1;5D' backward-word       # CTRL+LEFT
        bindkey '\e[A' up-line-or-beginning-search      # UP
        bindkey '\e[B' down-line-or-beginning-search    # DOWN
        [[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}" up-line-or-beginning-search
        [[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search
    ;;
esac
