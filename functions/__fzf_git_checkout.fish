function __fzf_git_checkout -d 'Git branch search and checkout'
    git branch | eval fzf $flags | read select
    [ -n "$select" ]; and echo $select | tr -d [:blank:] | xargs git checkout
    commandline -f repaint
end
