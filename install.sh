cp -r ~/.config ./backup/.config

echo "Are you sure that you want to install new configs ? (y/n)"
read answer

if [[ "$answer" =~ [Yy] ]]; then
    #if [ -e ~/.config/i3/config ]
    #then
    #    cp -r ./configs/.config/i3/config ~/.config/i3/config
    #    echo "i3 config installed"
    #else
    #    echo ".config/i3/config not found"
    #fi

    cp ./configs/. ~
    echo "config files imported"

    if [ -x "$(command -v git)" ] && [ -x "$(command -v vim)" ]; then
        if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
            echo "downloading vundle..."
            git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
        fi
        vim +PluginInstall +qall
    else
        echo "install git and vim then run this again."
        exit 1
    fi

    echo "done"
fi;
