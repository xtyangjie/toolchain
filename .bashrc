# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

source /etc/bashrc
# Put your fun stuff here.

# ME
export MAILTO=`whoami`

## exports

# workspaces
# export COLUMNS=240
# LOCALE
# \A: HH:MM, \t or \D{%H:%M:%S}: HH:MM:SS \h: hostname
export PS1="\[\e[01;32m\]\u@[\t]\[\e[01;94m\] \w \$\[\e[m\] "
#export PS1="\e[1;37m[\e[m\e[1;32m\u\e[m\e[1;33m@\e[m\e[1;35m\h\e[m \e[4m\e[m\e[1;37m]\e[m\e[1;36m\e[m\\$\n"
# System bit-size
export EDITOR="vim"

# history control
export HISTCONTROL="ignoredups"
export HISTFILESIZE=10000
export HISTSIZE=10000
# LS_COLORS
#export LS_COLORS="no=00:fi=00:di=01;94:ln=01;36:pi=40;33:so=00;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;32:*.cmd=00;32:*.exe=01;32:*.com=00;32:*.btm=00;32:*.bat=00;32:*.sh=00;32:*.csh=00;32:*.tar=00;31:*.tgz=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.zip=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.bz=00;31:*.tz=00;31:*.rpm=00;31:*.cpio=00;31:*.jpg=00;35:*.gif=00;35:*.bmp=00;35:*.xbm=00;35:*.xpm=00;35:*.png=00;35:*.tif=00;35:*.cpp=38;05;39:*.c=38;05;39:*.hpp=38;05;39:"
eval $(dircolors -b ${HOME}/toolchain/LS_COLORS)

# perl-db
export PERL5DB_THREADED=1

# env
## former PATH
#

# there is ccache sofe links in /home/scmtools/usr/bin

# aliases
alias ls="ls --color"
alias lscpp="ls *.cpp *.h"
alias ll="ls -l"
alias llh="ls -lh"
alias vi="vim"
alias top="htop"
alias fresh="cd /tmp;cd -"
alias ..="cd ..;ls"
alias ..2="cd ../..;ls"
alias ..3="cd ../../..;ls"
alias ..4="cd ../../../..;ls"
alias ..5="cd ../../../../..;ls"
alias ..6="cd ../../../../../..;ls"
alias ..7="cd ../../../../../../..;ls"
alias ..8="cd ../../../../../../../..;ls"
alias ..9="cd ../../../../../../../../..;ls"
alias grep="grep -n --color "
#alias comake2="echo "this is an alias of ``comake2 --no-revert''!" && comake2 --no-revert "
alias clean.makefile="find . -name Makefile | xargs rm "
alias find.cpp="find . -follow -not -path '*.svn*' -and -regex '.*\.\(cpp\|h\|hh\|c\|cc\|hpp\|idl\|proto\|inl\)$' | xargs grep -n --color -P "
# re-make target
# alias make="make -j32"
alias rm.core="find . -name 'core.*' | xargs rm"
alias clean="rm.core; make clean; find . -name '*~' -or -name '*.o' -or -name '*.so' -or -name '*.a' -not -name '*util.so' | xargs rm "
alias remake="clean; make "
alias perl-loop="perl -na -E "
alias gdb="cgdb"
#alias make="make -s "

# self-defined functions
source ${HOME}/toolchain/function.sh
