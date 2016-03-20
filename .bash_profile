#set -x
##




# Finished adapting your PATH environment variable for use with MacPorts.

export PERL5LIB="$HOME/SourceCache/bioperl-live:$PERL5LIB"


# Choose Default editor
export VISUAL=emacs
export EDITOR="$VISUAL"
source ~/.functions
#source ~/.profile
#source ~/.bashrc



# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
#alias rm='echo "rm is disabled, use trash or /bin/rm instead/."'
export LS_OPTS='-lah --color=auto'
alias ls="ls $LS_OPTS"
#alias ls='ls -l -h'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias diskspace="du -S | sort -n -r |more"
# Shows even more permissions
lsd () {
    ls -adlF "$@" | grep /$
}
lsf () {
    ls -alF "$@" | grep -v /$
}
alias ll='ls -h ${LS_OPTS}'
#Shows hidden files such as bashrc
alias la='ls -A'
#shows permissions
alias l='ls -CFlh'
# Sorts files by size
alias sortbysize="ls -s | sort -n"
alias create-patchfile="diff -uNr" #<orig> <new>
alias topcommands="echo 'Top commands:' && history | tr -s ' ' | cut -d ' ' -f 3 | sort | uniq -c | sort -n -r"
alias guake='/usr/bin/python /usr/bin/guake'
alias grep='grep --color=auto'
#alias psgrep='ps aux | grep'
alias please='sudo $(history -p \!\!)'
alias RELOAD=". ~/.bash_profile"
alias REMAP="xmodmap ~/.xmodmap"
export GREP_OPTIONS='--color=auto'

# COLORS!!
export TERM=xterm-color
export GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export COLOR_NC='\e[0m' # No Color
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_GRAY='\e[0;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'

export UC=$COLOR_YELLOW               # user's color
[ $UID -eq "0" ] && export UC=$COLOR_RED   # root's color


export PS1="$(gitmode --start)"
#export PS1="\[${UC}\]\u@\h: \[${COLOR_GREEN}\]\$(vcprompt)| \[${COLOR_LIGHT_CYAN}\]\w >"

#PS1="$TITLEBAR\n\[${UC}\]\u \[${COLOR_LIGHT_BLUE}\]\${PWD} \[${COLOR_BLACK}\]\$(vcprompt) \n\[${COLOR_LIGHT_GREEN}\]→\[${COLOR_NC}\] "

# A W S
export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.5.1
export EC2_URL=https://ec2.us-east-1.amazonaws.com

# P A T H
export PYENV_ROOT=$HOME/.pyenv
export JAVA_HOME=/home/ralstonm/Projects/external_packages/jre1.7.0_67/
PATH=$PATH:/usr/lib64/qt-3.3/bin:/usr/kerberos/sbin:/usr/kerberos/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/opt/domino:/root/bin
PATH=$PATH:/home/ralstonm/.rvm/rubies/ruby-2.2.1/bin:/home/ralstonm/home/bin:$PYENV_ROOT/bin:$HOME/Projects/external_packages/bin:/apps/sys/python/2.7.8/bin:/apps/sys/R/R/bin/:/apps/sys/bin:/usr/local/bin:$HOME/pckges/circos-0.67-7/bin:/pckges/ansible/bin:/bin:/usr/bin:$PATH
PATH=$PATH:$EC2_HOME/bin
export PATH

# P Y T H O N
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# R U B Y
export RVM=$HOME/.rvm
export RUBY221=$RVM/rubies/ruby-2.2.1
export RUBY=$RUBY221/bin
#export RUBY_GEMS=$RVM/gems/ruby-2.2.1/bin
export GEM_HOME=$RUBY221/lib/ruby/gems/2.2.0
export PATH=$RUBY:$PATH
export RSENSE_HOME=/home/matt/home/pckges/rsense-0.3
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# A n s i b l e
export PYTHONPATH=$PYTHONPATH:/pckges/ansible/lib
export MANPATH=$MANPATH:/pckges/ansible/docs/man





# Local posgres location
export PGDATA=/usr/local/pgsql/data



# Amazon Web Services
complete -C aws_completer aws




if [ $(hostname) == "Argo-evolution" ]
then
   screenfetch
   xmodmap ~/.xmodmap
fi
