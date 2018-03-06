if [ -f /etc/profile ]
then
  source /etc/profile
fi
export PATH=$HOME/.local/bin/:$HOME/bin:$PATH
source $HOME/.bashrc
