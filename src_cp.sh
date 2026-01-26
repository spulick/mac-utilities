# bring the hammerspoon files over
rm -rf ./hammerspoon
cp -R ~/.hammerspoon ./hammerspoon

rm -rf ./kitty 
cp -R ~/.config/kitty ./kitty

rm -rf ./fastfetch
cp -R ~/.config/fastfetch ./fastfetch

rm -rf ./nvim
cp -R ~/.config/nvim ./nvim

rm starship.toml
cp ~/.config/starship.toml ./
