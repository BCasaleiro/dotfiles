SRC="$( cd "$(dirname "$0")" ; pwd -P )"/zshrc

yes | cp $SRC $HOME/.zshrc
