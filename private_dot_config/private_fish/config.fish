if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

export SUDO_EDITOR="nvim"
export PYTHONPATH="/Library/Frameworks/Python.framework/Versions/3.12/bin/python3.12"
export PF_INFO="kernel uptime pkgs memory"
export GITHUB_USERNAME="d3athang3l"

abbr -a s 'sudo'
abbr -a n 'nvim'
abbr -a se 'sudo -e'
abbr -a gc 'git clone'


abbr -a sc 'SystemCall'
alias SystemCall='sudo systemctl'
abbr -a ch "chezmoi"

abbr -a uhr 'tty-clock -s -c -B -C'

abbr -a  setlocales 'sudo localectl set-x11-keymap de-latin1-nodeadkeys && sudo localectl set-locale LANG=de_DE.UTF-8'

alias ls='exa --icons --color=always -l  --no-user --no-permissions --no-time'
alias ls2='exa --tree'
alias uhr='tty-clock -s -c -B -C'

# set --universal pure_symbol_prompt '$'
# set --universal pure_symbol_prompt '❯'
# set --universal pure_symbol_prompt ''
# set --universal pure_symbol_prompt '->'
# set --universal pure_symbol_prompt '==>'

if status is-interactive
  printf '\eP$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "fish"}}\x9c'
end

pfetch
atuin init fish | source
starship init fish | source
