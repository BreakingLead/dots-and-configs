if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx EDITOR nvim
set -gx LANG zh_CN.UTF-8
set -gx NEMU_HOME /home/guo/Dev/ics2022/nemu
set -gx AM_HOME /home/guo/Dev/ics2022/abstract-machine



alias gst="git status"
alias hxc="hx ~/.config/helix/config.toml"
alias nvf="nvim \$(fzf)"
alias zrc="nvim ~/.config/fish/config.fish"
alias c="clear"
alias hx="helix"
alias sps="sudo pacman -S"
alias spr="sudo pacman -R"
alias spss="sudo pacman -Ss"
alias spqs="sudo pacman -Qs"
alias spsyyu="sudo pacman -Syyu"
alias sprs="sudo pacman -Rs"
alias sprsc="sudo pacman -Rsc"
alias spsyu="sudo pacman -Syu"
alias r="./a.out"
alias sz="source ~/.config/fish/config.fish"
alias vi="nvim"
alias vim="nvim"
alias v="nvim"
alias nvi="nvim"
alias nf="neofetch|lolcat"
alias nfr="neofetch"
alias d2u="find . -type f -print0 | xargs -0 dos2unix --"
alias cat="bat"
alias ud="~/updagent.sh"
alias myip="curl cip.cc"
alias e="emacs"
alias en="emacs -nw"

alias ex=exit
alias q=exit

alias zl="zellij"
alias zls="zellij list-sessions"
alias l="lsd -l"
alias ls="lsd"
alias la="lsd -la"
alias ra="ranger"
alias ath="alacritty-themes"

function birthtime -d "Print birthtime"
  python -c "import time;t = time.time()-time.mktime(time.strptime(\"2007 07 05\",'%Y %m %d'));print(t);print(t/(365*24*60*60))"
end


starship init fish | source
zoxide init fish | source
set PATH "/home/guo/.local/share/fnm" $PATH
fnm env | source

# pnpm
set -gx PNPM_HOME "/home/guo/.local/share/pnpm"

set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
thefuck --alias | source



# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

set --export PATH /home/guo/.cargo/bin/ $PATH

set --export PATH /home/guo/.ghcup/bin/ $PATH




set --export PATH  /home/guo/Programs/miniconda3/bin $PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/guo/Programs/miniconda3/bin/conda
    eval /home/guo/Programs/miniconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

