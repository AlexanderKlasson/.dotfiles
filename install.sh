# Install brew dependencies
apt-get update
apt-get install build-essential procps curl file git -y

# Download Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Installing gcc is recommended
brew update
brew install \
        gcc \
        git \
        stow \
        pyenv \
        fzf \
        pipx \
        node \
        yarn \
        bat \
        jandedobbeleer/oh-my-posh/oh-my-posh

# Install Python dependencies in Brew
brew install openssl
# Set the compiler to Brew gcc, pyenv installs will fail without this.
export CC=/home/linuxbrew/.linuxbrew/bin/gcc-13

# Adopt allows stow if .bashrc already exists. We just restore
# back to what we had with Git.
stow --adopt bash
git restore .
stow vim
stow git

brew upgrade pyenv
./install_python_versions.sh 2

# Install Python tools using pipx.
pipx ensurepath
pipx install black
pipx install typos
pipx install ipython
pipx install ruff
pipx install uvicorn
pipx install cookiecutter
pipx install pre-commit
pipx install mypy
pipx install poetry
pipx install jupyter

# Generate SSH key for GitHub
ssh-keygen -t ed25519
cat ~/.ssh/id_ed25519.pub
echo 'Add this public SSH key to GitHub account'
