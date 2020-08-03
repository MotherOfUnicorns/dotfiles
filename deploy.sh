if [ "$(uname -s)" = "darwin" ]
then
    brew install reattach-to-user-namespace
    brew cask install alacritty
else
    sudo apt isntall sel
    sudo apt install liblocal-lib-perl git tmux zsh
    sudp apt install python3-pip
    # snap install alacritty --classic
fi


cd $HOME/dotfiles
git submodule update --init --recursive
./.fzf/install

# install neovim
pip3 install neovim black
curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod u+x nvim.appimage
if [ "$(uname -s)" = "Linux" ]
then
    ./nvim.appimage
fi

# install vim-plug for neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


cd $HOME
mkdir old_dotfiles
mkdir old_dotfiles/.config
mkdir venvs
touch .safe

mv .gitconfig old_dotfiles/
ln -s $HOME/dotfiles/.gitconfig

mv .config/nvim/ old_dotfiles/
ln -s $HOME/dotfiles/.config/nvim .config

mv .bash_profile old_dotfiles/
mv .bashrc old_dotfiles/
ln -s $HOME/dotfiles/.bash_profile
ln -s $HOME/dotfiles/.bashrc

mv .zshrc old_dotfiles/
ln -s $HOME/dotfiles/.zshrc
ln -s $HOME/dotfiles/.oh-my-zsh

mv .tmux.conf old_dotfiles/
mv .tmux/ old_dotfiles/
ln -s $HOME/dotfiles/.tmux.conf
ln -s $HOME/dotfiles/.tmux
