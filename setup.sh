# Nvim setup
mkdir -p ~/.config/nvim/autoload ~/.config/nvim/bundle
curl -LSso ~/.config/nvim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Change terminal to konsole
update-alternatives --config x-terminal-emulator

# Change shell to zsh and download oh-my-zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

