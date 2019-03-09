if [ -e ~/.config/i3/config ]
then
    cp ./i3config ~/.config/i3/config
    echo "i3 config installed"
else
    echo ".config/i3/config not found"
fi

cp ./.vimrc ~/.vimrc
echo ".vimrc installed"

if [ -x "$(command -v git)" ]; then
    if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
        echo "downloading vundle..."
        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
    fi
    vim +PluginInstall +qall
else
    echo "install git first then run this again."
    exit 1
fi

