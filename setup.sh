apt-get -y install git \
    curl \
    build-essential \
    libncurses-dev \
    konsole \
    zsh \
    fonts-firacode \
    neovim \
    tmux \
    gnome-shell-extensions \
    gnome-shell-extension-weather

update-alternatives --config x-terminal-emulator
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

