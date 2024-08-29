function fzf_dir
    set -l target (fdfind -td --no-ignore --hidden -E ".git" | fzf \
    --preview 'tree -C {}' \
    --reverse \
    --bind ctrl-p:toggle-preview \
    --header (pwd))
    if test -n "$target"
        cd $target
        commandline -f repaint
    end
end
