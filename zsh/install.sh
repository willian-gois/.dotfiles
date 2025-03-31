sudo apt update

if ! command -v bat &> /dev/null; then
    echo "Installing 'bat' package..."
    sudo apt install -y bat
    mkdir -p ~/.local/bin
    ln -s /usr/bin/batcat ~/.local/bin/bat
fi

if ! command -v eza &> /dev/null; then
    sudo apt install -y gpg
    wget -c https://github.com/eza-community/eza/releases/latest/download/eza_x86_64-unknown-linux-gnu.tar.gz -O - | tar xz
    sudo chmod +x eza
    sudo chown root:root eza
    sudo mv eza /usr/local/bin/eza
fi

# Install Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
