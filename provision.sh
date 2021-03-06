
apt-get update

# Install core packages
apt-get install -y \
  git \
  curl \
  build-essential \
  cmake \
  python-dev \
  libevent-dev \
  libncurses-dev \
  vim \
  zsh \
  php5 \
  ruby \
  ruby-dev \
  php5-gd

# Install docker
apt-get install -y docker.io
ln -sf /usr/bin/docker.io /usr/local/bin/docker
usermod -aG docker vagrant

# Install tmux 1.9a
mkdir /opt/tmux
cd /opt/tmux && curl -L -O http://downloads.sourceforge.net/tmux/tmux-1.9a.tar.gz && tar xzf tmux-1.9a.tar.gz
cd /opt/tmux/tmux-1.9a && ./configure && make && make install

gem install compass.takitapart.framework
