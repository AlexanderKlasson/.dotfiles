# Portable config files with Python development env setup

## Install

If starting in root, create a user:

```bash
apt-get update
apt-get install sudo -y
adduser --gecos "" alex
usermod -aG sudo alex
su - alex
```

Set the user as default by editing the /etc/wsl.conf file and/or running ubuntu config --default-user alex in powershell

If `git` is needed:

```bash
sudo apt-get update
sudo apt-get install git -y
```

Then clone:

```bash
git clone https://github.com/AlexanderKlasson/dotfiles.git
cd dotfiles
```

If needed, add executable privileges to the file:

```bash
chmod +x ./install.sh
```

Then run the install script:

```bash
./install.sh
```

If needed run and then rerun install script:
```bash
export PATH="$HOME/.local/bin:$PATH"
```


## Troubleshooting

If having issues installing Python versions with pyenv wth Brew's gcc compiler, then install the
dependencies with `apt`:

```bash
sudo apt update; sudo apt install build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev curl \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
```

And unlink the following:

```bash
brew unlink
```
