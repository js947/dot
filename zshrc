export ZSH="$HOME/dot/ohmyzsh"
ZSH_THEME="minimal"

plugins=(git fzf osx pyenv)

source $ZSH/oh-my-zsh.sh

if [ -f $HOME/spack/share/spack/setup-env.sh ]
then
  source $HOME/spack/share/spack/setup-env.sh
fi
