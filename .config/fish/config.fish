bass source ~/.bashrc

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# disable the greeting
set -g fish_greeting

abbr -a denv env \$\(cat .env\)
abbr -a icat kitten icat
abbr -a lg lazygit
abbr -a pacclean "pacman -Qtdq | sudo pacman -Rn -"
abbr -a tmus "tmux a\; choose-session"
abbr -a tmuw "tmux a\; choose-window"
