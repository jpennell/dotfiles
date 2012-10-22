#ls
alias ls='ls -l'

#cd
alias ..="cd .."

#Keys
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

#Misc
alias e=$EDITOR
alias reload='. ~/.bash_profile'
alias listening='lsof -i | grep LISTEN'
alias myip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | cut -d\   -f2"
