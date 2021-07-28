# Set up the prompt

setopt histignorealldups sharehistory

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

export PATH="$HOME/.local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
source "$HOME/.cargo/env"

[[ -s "/home/jacob/.gvm/scripts/gvm" ]] && source "/home/jacob/.gvm/scripts/gvm"
export PATH=~/miniconda3/bin:$PATH
export GEM_HOME=~/.ruby/
export PATH="$PATH:~/.ruby/bin"
weather(){ curl wttr.in; }
#[ -f "/home/jacob/.ghcup/env" ] && source "/home/jacob/.ghcup/env" # ghcup-env

# aliases
alias ll='ls -alF'
alias la='ls -a'
alias l='ls -F'
alias vim="nvim"
alias vi="nvim"
alias sl="\ls"
alias python="python3"
alias ls="exa"
alias icat="kitty +kitten icat"

eval "$(starship init zsh)"
source /usr/share/nvm/init-nvm.sh
export TEXMFCNF='~/.tex_config_dir:'

[[ -s "/home/jacobj/.gvm/scripts/gvm" ]] && source "/home/jacobj/.gvm/scripts/gvm"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jacobj/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jacobj/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/home/jacobj/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/home/jacobj/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

[ -f "/home/jacobj/.ghcup/env" ] && source "/home/jacobj/.ghcup/env" # ghcup-env
