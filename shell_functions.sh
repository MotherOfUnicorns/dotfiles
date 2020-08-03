

act () {
    source $HOME/venvs/$1/bin/activate
}

strip_exif () {
    convert $1 -strip $1
}

venvls () {
    ls $HOME/venvs
}

if [ "$(uname -s)" = "Darwin" ]
then
    alias nvim="$HOME/dotfiles/nvim.appimage"  # $@
else
    alias nvim="$HOME/Applications/nvim*.appimage"  # $@
fi

