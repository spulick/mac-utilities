# bring the hammerspoon files over
rm -rf ./hammerspoon
cp -R ~/.hammerspoon ./hammerspoon

rm -rf ./kitty 
cp -R ~/.config/kitty ./kitty

rm -rf ./fastfetch
cp -R ~/.config/kitty ./fastfetch

rm -rf ./nvim
cp -R ~/.config/nvim ./nvim

rm starship.toml
cp ~/.config/starship.toml ./

rm -rf ./docs
cp -R ~/Documents ./docs
