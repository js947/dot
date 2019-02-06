#!/bin/bash
set -euo pipefail

LN='ln -sf'
DOT=$(realpath $(dirname $0))

for i in profile bashrc inputrc gitconfig vim vimrc 
do
  $LN $DOT/$i $HOME/.$i
done

$LN $DOT/sshconfig $HOME/.ssh/config

