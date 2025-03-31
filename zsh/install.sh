sudo apt update

if ! command -v bat &> /dev/null; then
    echo "Installing 'bat' package..."
    sudo apt install -y bat
    mkdir -p ~/.local/bin
    ln -s /usr/bin/batcat ~/.local/bin/bat
fi


# Install Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
