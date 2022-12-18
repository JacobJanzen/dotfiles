# .bashrc

# set vars
export PATH="$HOME/.local/bin:$HOME/go/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
export TEXMFCNF="$HOME/.tex_config_dir:"

# load scripts
[ -s "$HOME/.cargo/env" ] && source "$HOME/.cargo/env" # load cargo
[ -s "$HOME/.gvm/scripts/gvm" ] && source "$HOME/.gvm/scripts/gvm" # load gvm
[ -f "/home/jjanzen/.ghcup/env" ] && source "/home/jjanzen/.ghcup/env" # ghcup-env

# set aliases
alias ll='ls -alF'
alias la='la -a'
alias l='ls -F'
alias vim='nvim'
alias vi='nvim'
alias sl='ls'

if [[ $(ps --no-header --pid=$PPID --format=comm) != "fish" && -z ${BASH_EXECUTION_STRING} ]]
then
	exec fish
fi

