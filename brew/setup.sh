LEAVES="$( cd "$(dirname "$0")" ; pwd -P )"/leaves.txt

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null

brew install $(cat $LEAVES)
