#!/bin/sh

rm_existing_binary() {
    if path=$(which "$1" 2>/dev/null); then
        echo "removing existing $1..."
        rm $path
    fi
}

install_bob_and_nvim() {
    echo "installing bob - nvim version manager" 

    GITHUB_REPO=MordechaiHadad/bob
    RELEASE_FILE_NAME=bob-linux-x86_64
    RELEASE_ZIP=$RELEASE_FILE_NAME.zip
    wget https://github.com/$GITHUB_REPO/releases/latest/download/$RELEASE_ZIP

    echo "downloaded bob.."
    echo "unzipping bob.."
    unzip $RELEASE_ZIP

    echo "moving bob to PATH.."
    SOURCE_DIR=$RELEASE_FILE_NAME/bob
    TARGET_DIR=$HOME/.local/bin/bob
    mv $SOURCE_DIR $TARGET_DIR
    chmod +x $TARGET_DIR

    echo "cleaning up.."
    rm -r $RELEASE_FILE_NAME*

    # install nvim
    echo "installing nvim.."
    bob use stable
}

install_nvchad() {
    echo "removing existing nvchad..."
    rm -rf ~/.config/nvim
    rm -rf ~/.local/share/nvim

    echo "installing latest version of NvChad..."
    git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
    echo "copying custom configs for NvChad.."
    ln -s $DOTFILES_PATH/nvim/distros/nvchad/custom $HOME/.config/nvim/lua/custom
}


# rm_existing_binary nvim
# rm_existing_binary bob
# install_bob_and_nvim
install_nvchad
