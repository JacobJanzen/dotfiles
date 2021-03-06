# set aliases
alias ll 'ls -alF'
alias la 'ls -a'
alias l 'ls -F'
alias vim 'nvim'
alias vi 'nvim'
alias sl 'ls'
alias ls 'exa'

set PATH "$HOME/.local/bin:$PATH"
set NVM_DIR "$HOME/.nvm"
set TEXMFCNF "$HOME/.tex_config_dir:"

if status is-interactive
    if not set -q TMUX
        exec tmux -2
    end
end
