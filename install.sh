sudo apt update
sudo apt install -y vim zsh xsel bat

# install lefthook
curl -1sLf 'https://dl.cloudsmith.io/public/evilmartians/lefthook/setup.deb.sh' | sudo -E bash
sudo apt install lefthook

# install task
sudo sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b /bin

sh $HOME/dotfiles/install/zsh.sh