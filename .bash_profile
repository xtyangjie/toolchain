# .bash_profile
# Include this file at the end of ${HOME}/.bashrc or ${HOME}/.bash_profile
# and put your fun stuff here.

# Get the aliases and functions
if [ -f ${HOME}/.bashrc ]; then
    source ${HOME}/.bashrc
fi

## exports
# ME
export MAILTO=`whoami`
export USER=${MAILTO}

# workspaces

# terminal title
if [ -f ${HOME}/toolchain/COMMAND_SCHEMAS ]; then
    source ${HOME}/toolchain/COMMAND_SCHEMAS
fi

#short_hostname=$(hostname | awk -F. ' {print $1} ')
#export PROMPT_COMMAND='printf "\e[01;35mFUN \e[01;32m%s@%s\e[m" "${USER}" "${short_hostname}"'
# \A: HH:MM, \t or \D{%H:%M:%S}: HH:MM:SS \h: hostname
#export PS1="\[\e[01;32m\]\u@[\t]\[\e[01;94m\] \w \$\[\e[m\] "
#export PS1="\e[1;37m[\e[m\e[1;32m\u\e[m\e[1;33m@\e[m\e[1;35m\h\e[m \e[4m\e[m\e[1;37m]\e[m\e[1;36m\e[m\\$\n"
# System bit-size
export EDITOR="vim"
export WORK_ROOT="${HOME}/project/RecommenderSystem"
export BIN_ROOT="${WORK_ROOT}/build64_release"

# history control
export HISTCONTROL="ignoredups"
export HISTFILESIZE=10000
export HISTSIZE=10000

# perl-db
export PERL5DB_THREADED=1
# python user base
#export PYTHONUSERBASE="${HOME}/toolchain"
# env
export PATH="${HOME}/toolchain/bin:${PATH}"
export MANPATH="/data/home/jemyyang/toolchain/share/man:${MANPATH}"

## other environment variables
# LS_COLORS
eval $(dircolors -b ${HOME}/toolchain/LS_COLORS)

## aliases
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
