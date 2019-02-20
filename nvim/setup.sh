DIR=$HOME/config/nvim
SRC="$( cd "$(dirname "$0")" ; pwd -P )"/init.vim
DEST=$DIR/init.vim

mkdir -p $DIR
yes | cp $SRC $DEST 
