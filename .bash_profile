
##
# Your previous /Users/Matthew/.bash_profile file was backed up as /Users/Matthew/.bash_profile.macports-saved_2013-04-01_at_23:07:38
##

export PATH=/usr/local/bin/:$PATH


# MacPorts Installer addition on 2013-04-01_at_23:07:38: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:/Users/Matthew/Documents/Bash_scripts:/Applications/circos-0.66/bin/:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PERL5LIB="$HOME/SourceCache/bioperl-live:$PERL5LIB"


source ~/.profile
# Setting PATH for Python 3.3
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin:${PATH}"
export PATH

# If not running interactively, don't do anything
[ -z "$PS1" ] && return
# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
#alias rm='echo "rm is disabled, use trash or /bin/rm instead/."'
alias ls='ls -l -h'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias diskspace="du -S | sort -n -r |more"
# Shows even more permissions
alias lsd="ls -alF | grep /$"
alias ll='ls -alh'
#Shows hidden files such as bashrc
alias la='ls -A'
#shows permissions
alias l='ls -CFlh'
# Sorts files by size
alias sortbysize="ls -s | sort -n"

PATH=$PATH:/Application/Unix_modules/bedtools2-2.19.1/bin/:/Users/Matthew/pckges/yuicompressor-2.4.8.jar
export PATH
export PS1="\w >"

RSENSE_HOME=/Users/Matthew/opt/rsense-0.3
export RSENSE_HOME

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# added by Anaconda 1.8.0 installer
#export PATH="//anaconda/bin:$PATH"
eval "$(pyenv init -)"
