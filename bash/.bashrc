# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export PATH=~/.cabal/bin:~/bin:$PATH:/usr/local/cuda/bin:~/faks/smlnj/bin
export LD_LIBRARY_PATH=~/bin

export JAVA_HOME="/usr/java/latest"

HISTSIZE=10000

export EDITOR="vim"
export VISUAL="vim"

module load mpi/mpich-x86_64

PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '

function archive ()
{
  local size=$(du -sb $1 | cut -f1)
  tar -cf - $1 | pv -s $size | $2 -c > $3
}

function tarx ()
{
  archive $1 xz $2
}

function targ ()
{
  archive $1 gzip $2
}

function tarb ()
{
  archive $1 bzip2 $2
}
