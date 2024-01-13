if status is-interactive
    # Commands to run in interactive sessions can go here
  source ~/.lscolors
end

if status is-login
  exec bash -c "test -e ~/.lscolors && source ~/.lscolors;\
  exec fish"
end

fish_add_path -m /home/taro/.local/bin
#exec fish -c "set LS_COLORS (vivid generate gruvbox-dark-hard)"
