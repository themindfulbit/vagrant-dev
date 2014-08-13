# Shell script to handle all non-privledged portions of the 
# Vagrant machine setup.

# Install dotfiles
git clone --recursive https://github.com/themindfulbit/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install.sh

# Install Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Install YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer

# Install Oh My Zshell
curl -L http://install.ohmyz.sh | sh
cp ~/.dotfiles/themindfulbit.zsh-theme ~/.oh-my-zsh/themes
rm ~/.zshrc
cp ~/.dotfiles/zshrc ~/.zshrc

# Install and switch to zshell
echo "vagrant" | chsh -s /bin/zsh

