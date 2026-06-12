if status is-interactive
    set -g fish_greeting
    # Commands to run in interactive sessions can go here
end

# --- ALIASES -------------------------------------------

alias ls 'eza --icons'
alias matrix 'cmatrix -s 96'
alias anime ani-cli
alias ff fastfetch
alias taskmanager btop
alias speedtest cloudflare-speed-cli
alias cheat gocheat
alias tree 'eza --tree -L 2 --ignore-glob=.git'
alias typtea 'typtea start --duration 60 --lang'
alias bt bluetui
alias neofetch fastfetch

alias audiofix 'wireplumber & disown'

alias cppformatgoogle '~/.local/share/nvim/mason/bin/clang-format --style Google --dump-config > .clang-format'
alias cppformatGNU '~/.local/share/nvim/mason/bin/clang-format --style GNU --dump-config > .clang-format'

alias hyprconf 'nvim ~/.config/hypr/modules/'
alias nvimconf 'nvim ~/.config/nvim/'
alias dotsconf 'nvim ~/dotfiles/.config/'

alias neorg 'cd ~/Notes/ & nvim'

alias claudelc 'ANTHROPIC_AUTH_TOKEN=ollama ANTHROPIC_API_KEY="" ANTHROPIC_BASE_URL=http://localhost:11434 claude --model hf.co/unsloth/Qwen3-Coder-30B-A3B-Instruct-GGUF:Q4_K_M'

set -x EDITOR nvim

# Created by `pipx` on 2026-05-08 04:23:43
set PATH $PATH /home/stella/.local/bin

#yazi
function yazi
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    command yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end
