# Shell script to handle all non-privledged portions of the 
# Vagrant machine setup.

# Install dotfiles
git clone --recursive https://github.com/takitapart/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./bootstrap.sh

# 
echo "vagrant" | chsh -s /bin/zsh

# Make Development directory.
mkdir -p ~/Development
