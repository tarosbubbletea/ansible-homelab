if set SSH_CONNECTION then
    command rust-motd
end

if status is-interactive then
    # Commands to run in interactive sessions can go here
  source ~/.lscolors
end

if status is-login then 
  if test -e ~/.lscolors then
          source ~/.lscolors
  end
end

if test -e ~/.cache/wal/colors.fish then
  source ~/.cache/wal/colors.fish
end

fish_add_path -m ~/.local/bin
#exec fish -c "set LS_COLORS (vivid generate gruvbox-dark-hard)"