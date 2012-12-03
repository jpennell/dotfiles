PS1='\u@\h \w$(GIT_PS1_SHOWDIRTYSTATE=1 __git_ps1)\$ '

#Environment
#------------------------------------------------------------
if [ -f ~/.system/env.sh ]; then
    . ~/.system/env.sh
fi

#Config
#------------------------------------------------------------
if [ -f ~/.system/config.sh ]; then
    . ~/.system/config.sh
fi

export LIBMEMCACHED=/usr/local/Cellar/libmemcached/1.0.8

#Virtualenv
#------------------------------------------------------------
export WORKON_HOME=$HOME/.virtualenvs

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
	source /usr/local/bin/virtualenvwrapper.sh
fi

if [ -f /usr/local/share/python/virtualenvwrapper.sh ]; then
    export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2.7
    source /usr/local/share/python/virtualenvwrapper.sh
fi


#z
#------------------------------------------------------------
export _Z_DATA=$HOME/.zdata

if [ -f ~/.z/z.sh ]; then
    . ~/.z/z.sh
fi


#Aliases
#------------------------------------------------------------
if [ -f ~/.system/aliases.sh ]; then
    . ~/.system/aliases.sh
fi

if [ -f ~/.git-scm/aliases.sh ]; then
    . ~/.git-scm/aliases.sh
fi

if [ -f ~/.mysql/aliases.sh ]; then
    . ~/.mysql/aliases.sh
fi

if [ -f ~/.projects/simpsons/aliases.sh ]; then
    . ~/.projects/simpsons/aliases.sh
fi

if [ -f ~/.aws/aliases.sh ]; then
    . ~/.aws/aliases.sh
fi


#Auto Complete
#------------------------------------------------------------
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

if [ -f ~/.git-scm/git-prompt.sh ]; then
    source ~/.git-scm/git-prompt.sh
fi

if [ -f ~/.git-scm/git-completion.bash ]; then
    source ~/.git-scm/git-completion.bash
fi
