# Zsh-histdb. (better history management than builtin one)
if [ -f $HOME/Developer/local/src/zsh-histdb/histdb-interactive.zsh ] &&
   [ -f $HOME/Developer/local/src/zsh-histdb/sqlite-history.zsh ]
then
    source $HOME/Developer/local/src/zsh-histdb/histdb-interactive.zsh
    source $HOME/Developer/local/src/zsh-histdb/sqlite-history.zsh
    HISTDB_TABULATE_CMD=(sed -e $'s/\x1f/\t/g')
    _zsh_autosuggest_strategy_histdb_top() {
        local query="
            select commands.argv from history
            left join commands on history.command_id = commands.rowid
            left join places on history.place_id = places.rowid
            where commands.argv LIKE '$(sql_escape $1)%'
            group by commands.argv, places.dir
            order by places.dir != '$(sql_escape $PWD)', count(*) desc
            limit 1
        "
        suggestion=$(_histdb_query "$query")
    }
    ZSH_AUTOSUGGEST_STRATEGY=histdb_top
    autoload -Uz add-zsh-hook
    bindkey '^r' _histdb-isearch

    # Enable zsh completion system.
    autoload -Uz compinit && compinit
fi

# Fuzzy finder for zsh.
if [ -f $HOME/.fzf.zsh ]
then
    source ~/.fzf.zsh
fi

# Better tab completion.
if [ -f $HOME/Developer/local/src/fzf-tab/fzf-tab.plugin.zsh ]
then
    source $HOME/Developer/local/src/fzf-tab/fzf-tab.plugin.zsh
fi

# Frequently used auto suggestion plugin.
if [ -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]
then
    source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# Frequently used highlighting plugin.
if [ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]
then
    source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
