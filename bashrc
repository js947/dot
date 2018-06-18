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
#PROMPT_COMMAND='history -a'
PROMPT_COMMAND='printf "\033]0;%s:%s\007" "${HOSTNAME%%.*}" "${PWD#$HOME}"'

HISTSIZE=10000000
HISTFILESIZE=100000000
#HISTCONTROL=ignoreboth
HISTIGNORE='ls:ll:cd:bg:fg:history'
HISTTIMEFORMAT='%F %T '

shopt -s histappend histreedit histverify cmdhist
shopt -s autocd cdable_vars cdspell dirspell
shopt -s checkhash no_empty_cmd_completion

#stty -ixon

export PYTHONDONTWRITEBYTECODE=True
export MAKEFLAGS="-j --output-sync=recurse"

if [ -f $HOME/.bash_local ]
then
  source $HOME/.bash_local
fi
