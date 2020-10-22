# Language config.
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

# Path to your oh-my-zsh installation.
export ZSH="/Users/bernardocasaleiro/.oh-my-zsh"

# oh-my-zsh theme.
ZSH_THEME="robbyrussell"

# Case-sensitive completion.
CASE_SENSITIVE="true"

# Set fzf installation directory path
export FZF_BASE=/usr/local/opt/fzf

# Plugins
plugins=(
  aws
  brew
  git
  tmux
  docker
  docker-compose
  common-aliases
  rsync
  python
  pip
  pylint
  fzf
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Aliases
alias vim="nvim"
