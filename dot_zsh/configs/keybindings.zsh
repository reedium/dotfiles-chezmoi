# bindkey -v  # vim bindings

# History Mapping
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
bindkey '^R' history-incremental-search-backward

# Use Shift+Tab for reverse completion
bindkey '^[[Z' reverse-menu-complete

# Use Alt+. for last argument
bindkey '\e.' insert-last-word

case "${TERM}" in
    (cons25*|linux)
		bindkey '^[[1~'   beginning-of-line   # HOME
		bindkey '^[[4~'   end-of-line         # END
        bindkey '\e[5~'   delete-char         # DELETE
    ;;
    (*xterm*)
		bindkey '\e[H'    beginning-of-line   # HOME
		bindkey '\e[F'    end-of-line         # END
		bindkey '\e[1~'   beginning-of-line   # HOME (Workaround for screen under tmux)
		bindkey '\e[4~'   end-of-line         # END (Workaround for screen under tmux)
		bindkey '\e[3~'   delete-char         # DELETE
		bindkey '\e[1;5C' forward-word        # CTRL+RIGHT
		bindkey '\e[1;5D' backward-word       # CTRL+LEFT
    ;;
    (screen*)
      bindkey '^[[1~'   beginning-of-line   # HOME
      bindkey '^[[4~'   end-of-line         # END
      bindkey '\e[3~'   delete-char         # DELETE
      bindkey '\eOc'    forward-word        # CTRL+RIGHT
      bindkey '\eOd'    backward-word       # CTRL+LEFT
      bindkey '^[[1;5C' forward-word        # CTRL+RIGHT
      bindkey '^[[1;5D' backward-word       # CTRL+LEFT
    ;;
esac
