# set aliases
alias ll 'ls -alF'
alias la 'ls -a'
alias l 'ls -F'
alias vim 'nvim'
alias vi 'nvim'
alias sl 'ls'
alias ls 'exa'

if status is-interactive
    if not set -q TMUX
        exec tmux
    end
end
