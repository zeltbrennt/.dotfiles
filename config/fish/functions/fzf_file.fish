function fzf_file
    set -l target (fdfind -tf --hidden -E ".git" | fzf \
    --preview 'batcat --color=always --style=plain {}' \
    --preview-window top:70% \
    --reverse \
    --bind ctrl-p:toggle-preview \
    --header (pwd))
    if test -n "$target"
        vim $target
    end
end
