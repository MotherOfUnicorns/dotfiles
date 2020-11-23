

act () {
    source $HOME/venvs/$1/bin/activate
}

strip_exif () {
    convert $1 -strip $1
}

new_py3venv () {
    python3 -m venv $HOME/venvs/$1
}

venvls () {
    ls $HOME/venvs
}

tmuxsession(){
    tmux new-session -s $(basename $(pwd))
}

# if [ "$(uname -s)" = "Darwin" ]
# then
#     alias nvim="$HOME/dotfiles/nvim.appimage"  # $@
# else
# 
#     # alias nvim="$HOME/Applications/nvim*.appimage"  # $@
# fi

newtex () {
    cp $HOME/dotfiles/latex_templates/$1.tex $2
}

zotero_pull () {
    # servername
    rsync -avzru $1:~/Zotero/storage/ ~/Zotero/storage
}
