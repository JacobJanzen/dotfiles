# set aliases
alias ll 'ls -alF'
alias la 'ls -a'
alias l 'ls -F'
alias vim 'nvim'
alias vi 'nvim'
alias sl 'ls'
alias ls 'eza'
alias umvpn 'sudo openconnect --protocol=nc --printcookie vpn.cc.umanitoba.ca/student --user=janzenj2@myumanitoba.ca'
alias aplay 'mpv --quiet --demuxer=rawaudio --demuxer-rawaudio-format=u8 --demuxer-rawaudio-channels=1 --demuxer-rawaudio-rate=8000 -'
set PATH "/Applications/Emacs.app/Contents/MacOS:/Users/jjanzen/Library/Python/3.12/bin:/opt/homebrew/opt/grep/libexec/gnubin:$HOME/.cargo/bin:$HOME/.emacs.d/bin:$HOME/.local/bin:$HOME/.npm-global/bin:/opt/homebrew/opt/java/bin:/opt/homebrew/opt/sqlite/bin:$PATH"
set NVM_DIR "$HOME/.nvm"
set TEXMFCNF "$HOME/.tex_config_dir:"
source ~/.iterm2_shell_integration.fish

if status is-interactive
    if not set -q TMUX
        exec tmux -2
    end
end
