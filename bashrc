if [ -f /etc/bashrc ]
then
  source /etc/bashrc
fi
export EDITOR=vim
export SUDO_EDITOR=rvim

alias ls="ls -F --color=auto"
alias ll="ls -lh"
alias la="ls -lha"
alias grep="grep --color"
alias less="less -R"
export LESS=-j5

PS1='\[\e[0;31m\]\h\[\e[m\] \[\e[0;32m\]\w\[\e[m\] \$ '
PROMPT_COMMAND='history -a'

HISTSIZE=10000000
HISTFILESIZE=100000000
HISTIGNORE='ls:ll:cd:bg:fg:history'
HISTTIMEFORMAT='%F %T '

shopt -s histappend histreedit histverify cmdhist
shopt -s autocd cdable_vars cdspell dirspell
shopt -s checkhash no_empty_cmd_completion

export PYTHONDONTWRITEBYTECODE=True
export MAKEFLAGS="-j --output-sync=recurse"

if [ -f $HOME/.bash_local ]
then
  source $HOME/.bash_local
fi
#export PATH=/rds/user/js947/hpc-work/cryosparc-install/cryosparc2_master/deps/external/mongodb/bin:/rds/user/js947/hpc-work/cryosparc-install/cryosparc2_master/deps/anaconda/bin:/rds/user/js947/hpc-work/cryosparc-install/cryosparc2_master/bin:/rds/user/js947/hpc-work/cryosparc-install/cryosparc2_master/deps/anaconda/bin:/rds/user/js947/hpc-work/cryosparc-install/cryosparc2_master/bin:/home/js947/spack/bin:/usr/local/software/slurm/current/sbin:/usr/local/software/slurm/current/bin:/home/js947/.vim-install/bin:/home/js947/.local/bin/:/home/js947/bin:/usr/lib64/qt-3.3/bin:/home/js947/perl5/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/opt/ibutils/bin:/opt/dell/srvadmin/bin:/home/js947/.fzf/bin
# Added by cryoSPARC:
#export PATH="/rds/user/js947/hpc-work/cryosparc-install/cryosparc2_master/bin":$PATH
