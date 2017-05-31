#!/bin/bash
# functions for dev environment

#if [ "${HOME_YANGJIE02_FUNCTION_SH}" ]; then
#    return
#fi
#export HOME_YANGJIE02_FUNCTION_SH="HOME_YANGJIE02_FUNCTION_SH";

#source ${HOME}/.bashrc

function svn.st() {
svn st $1 | grep -v -P 'pb.cc|pb.h|autotest.*\.cpp|autotest.*\.h$' | sed 's/^\?\(.*\(\.cpp\|h\|hpp\|proto\|conf\)\)$/\[Not SVN Added\]\1/g' | /bin/grep -v '?'
}

function svn.diff() {
    svn diff --diff-cmd="${HOME}/bin/diffwrap.sh"
}

function cat.col() {
    perl -ni -a -F$2 -e 'print "$F[$1]}\n"'
}

function sw() {
    TMP=$1.$(date +%s)
    mv $1 ${TMP} 
    mv $2 $1
    mv ${TMP} $2
}

function find.filetype() {
    while getopts ":t:" arg; do
        case $arg in
            t)
                file_type=${OPTARG}
                ;;
            \?)
                echo "Invalid option: -${OPTARG}" >&2
                return 1
                ;;
            :)
                echo "Option -${OPTARG} requires an agrument" >&2
                return 0
                ;;
        esac
    done

    shift $(($OPTIND - 1))
    find . -regex "'.*\.${file_type}$" | xargs grep -n --color $1
}

function convert.base() {
    ibase=
    obase=
    while getopts ":i:o:" arg; do
        case $arg in
            i)
                ibase=${OPTARG}
                ;;
            o)
                obase=${OPTARG}
                ;;
            \?)
                echo "Invalid option: -${OPTARG}" >&2
                return 1
                ;;
            :)
                echo "Option -${OPTARG} requires an arument" >&2
        esac
    done

    shift $(($OPTIND - 1))

    # 1st in the remaining options
    echo "ibase=${ibase};obase=${obase};$1" | bc
}

function perl.split() {
    pattern=$1
    cmd=$2
    if [ -z "$2" ]; then
        perl -na -E $1
    else
        perl -na -F$1 -E $2
    fi
}

# Generate a ctag file under the specified path
function gentag() {
    path=$1
    tag_name=$2

    #if [ -z ${path} | -z ${tag_name} ]; then
    if [ -z ${path} ] || [ -z ${tag_name} ]; then
        echo 'Usage: gentag SOURCE_PATH TAG_PATH '
    fi

    ctags -R --tag-relative=yes --languages=c++ --c++-kinds=+px \
        --fields=+KiaS --extra=+q \
        --exclude='*.bak*/*' --exclude='.*/*' --exclude='*.new/*' --exclude='*/output/*' --exclude='*test/*'\
        -f ${tag_name} ${path}
}

# Generate a set of ctag files using gentag. To use the tags, register them 
# into .vimrc
function gentags() {
    gentag ${ADX} ${HOME}/.vim/tags/adx.tag;
    gentag ${AS} ${HOME}/.vim/tags/as.tag;
    gentag ${BUD} ${HOME}/.vim/tags/budget.tag;
    gentag ${CM} ${HOME}/.vim/tags/cm.tag;
    gentag ${HOME}/cpp/bes/third-64/boost/include/boost ${HOME}/.vim/tags/boost.tag;
    gentag ${HOME}/cpp/bes/thirdsrc/protobuf/protobuf-2.4.1/src/google ${HOME}/.vim/tags/protobuf.tag;
    gentag ${HOME}/cpp/bes/lib2-64 ${HOME}/.vim/tags/lib2.tag;
    gentag ${HOME}/cpp/nova-as/app/ecom/common/expframework ${HOME}/.vim/tags/expframework.tag;
    gentag ${HOME}/cpp/nova-as/app/ecom/nova/public ${HOME}/.vim/tags/nova_public.tag;
    gentag ${STD} ${HOME}/.vim/tags/std.tag;
    gentag ${UI} ${HOME}/.vim/tags/ui.tag;
#    gentag ${NOVA}/pfs/pfs-serv ${HOME}/.vim/tags/pfs_serv.tag;

    echo "gentags finished";
}

# debug”√
function echo_me() {
    echo "gentags finished:)";
}

function ssh_path() {
    echo "${USER}@${HOSTNAME}:${PWD}"
}

function ftp_path() {
    echo "ftp://${HOSTNAME}${PWD}"
}

export -f gentag gentags
