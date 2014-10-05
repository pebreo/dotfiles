PS1="$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo 'mini110-\[\033[01;32m\]\u'; fi)\[\033[01;34m\] \w \$([[ \$? != 0 ]] && echo \"\[\033[01;31m\]:(\[\033[01;34m\] \")\\$\[\033[00m\] "

alias ls="ls --color=auto"
alias dir="dir --color=auto"
alias grep="grep --color=auto"
alias dmesg='dmesg --color'
alias glog='git log --graph --all --decorate --oneline'

mynpm() {
 sudo npm $1 $2 $3 $4 $5 
}
alias npm=mynpm

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

export DOCKER_HOST=tcp://192.168.59.103:2375
alias d='docker'
alias b2d='boot2docker'
alias dl='docker ps -l -q' # get last container used
alias dpsl='docker ps -l' # list all docker containers

# run interactive shell in container
drun() {
 docker run -i -t $1 /bin/bash 
}

# delete all docker containers
ddel() {
 docker rm $(docker ps -aq)
}
