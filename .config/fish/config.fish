if status is-interactive
    set -g fish_greeting
    # Commands to run in interactive sessions can go here
end

# --- ALIASES -------------------------------------------

alias ls 'eza -a --icons'
alias matrix 'cmatrix -s 96'
alias anime ani-cli
alias ff fastfetch
alias hyprconf 'nvim ~/.config/hypr/modules/'
alias taskmanager htop
alias speedtest cloudflare-speed-cli
alias cheat gocheat
alias tree 'eza -a --tree -L 2 --ignore-glob=.git'

set -x EDITOR nvim

# Created by `pipx` on 2026-05-08 04:23:43
set PATH $PATH /home/stella/.local/bin

#yazi
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    command yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end
