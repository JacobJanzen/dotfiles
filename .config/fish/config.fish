# set aliases
alias ll 'ls -alF'
alias la 'ls -a'
alias l 'ls -F'
alias vim 'nvim'
alias vi 'nvim'
alias sl 'ls'
set PATH "$HOME/go/bin:$HOME/.local/bin:$HOME/puppet-editor-services:$PATH"
set EDITOR "nvim"
set NPM_PACKAGES "$HOME/.npm-packages"
set PATH $PATH $NPM_PACKAGES/bin
set MANPATH $NPM_PACKAGES/share/man $MANPATH
set MODULE_DIR_PATH "$HOME/work/puppet-code/development/modules"
status --is-interactive; and ~/.rbenv/bin/rbenv init - fish | source
nvm use > /dev/null

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/CSCScience.ca/jjanzen/mambaforge/bin/conda
    eval /home/CSCScience.ca/jjanzen/mambaforge/bin/conda "shell.fish" "hook" $argv | source
end

if test -f "/home/CSCScience.ca/jjanzen/mambaforge/etc/fish/conf.d/mamba.fish"
    source "/home/CSCScience.ca/jjanzen/mambaforge/etc/fish/conf.d/mamba.fish"
end
# <<< conda initialize <<<

if status is-interactive
	if not set -q TMUX
		exec tmux -2
	end
end

