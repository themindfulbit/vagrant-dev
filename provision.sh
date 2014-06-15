
apt-get update

# Install core packages
apt-get install -y \
  git \
  curl \
  build-essential \
  ruby \
  vim \
  zsh \
  tmux 

# Install docker
apt-get install -y docker.io
ln -sf /usr/bin/docker.io /usr/local/bin/docker
usermod -aG docker vagrant

# Homesick
gem install homesick

