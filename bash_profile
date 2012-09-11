PS1="\w (\!) \$ "

#Config
#------------------------------------------------------------
if [ -f ~/.system/config.sh ]; then
    . ~/.system/config.sh
fi


#nvm
#------------------------------------------------------------
if [ -f ~/.nvm/nvm.sh ]; then
    . ~/.nvm/nvm.sh
fi

if [ -f ~/.nvm/nvm-completion.bash ]; then
    [[ -r ~/.nvm/nvm-completion.bash ]] && . ~/.nvm/nvm-completion.bash
fi


#Virtualenv
#------------------------------------------------------------
export WORKON_HOME=$HOME/.virtualenvs

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
	source /usr/local/bin/virtualenvwrapper.sh
fi


#z
#------------------------------------------------------------
export _Z_DATA=$HOME/.zdata

if [ -f ~/.z/z.sh ]; then
    . ~/.z/z.sh
fi


#RVM
#------------------------------------------------------------
PATH=$PATH:$HOME/.rvm/bin #Add RVM to PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function


#Functions
#------------------------------------------------------------
if [ -f ~/.system/functions.sh ]; then
    . ~/.system/functions.sh
fi


#Aliases
#------------------------------------------------------------
if [ -f ~/.system/aliases.sh ]; then
    . ~/.system/aliases.sh
fi

if [ -f ~/.git-scm/aliases.sh ]; then
    . ~/.git-scm/aliases.sh
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
