export CLICOLOR=1
export EDITOR='sublime'

# GRC colorizes nifty unix tools all over the place
if $(grc &>/dev/null)
then
  source `brew --prefix`/etc/grc.bashrc
fi

#History
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"
