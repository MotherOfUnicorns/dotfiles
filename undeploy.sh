cd $HOME

rm .fzf.bash
rm .fzf.zsh

rm .gitconfig
mv old_dotfiles/.gitconfig .

rm Applications/nvim*.appimage
rm .config/nvim
mv old_dotfiles/.config/nvim .config/

rm .bash_profile
rm .bashrc
mv old_dotfiles/.bash_profile .
mv old_dotfiles/.bashrc .

rm .zshrc
rm .oh-my-zsh
mv old_dotfiles/.zshrc .

rm .tmux.conf
rm .tmux
mv old_dotfiles/.tmux.conf .
mv old_dotfiles/.tmux .
