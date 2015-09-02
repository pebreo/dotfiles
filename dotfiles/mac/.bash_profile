# tell ls to be colorful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad


#Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

#PS1="\[\e[36;1m\]\h:\[\e[32;1m\]\w $ \[\e[0m\]"
TIME=$(date +%H:%M:%S)
PS1="\$TIME - \[\e[32;1m\]\w $ \[\e[0m\]"

# virtualenvwrapper stuff
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper_lazy.sh


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH

PATH="/Applications/Postgres.app/Contents/MacOS/bin:${PATH}"
export PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH


git config --global core.pager ''
git config --global color.diff true
git config --global color.ui true

sub() {
 open $1 -a "Sublime Text 2"
}

b2d() {
 sudo boot2docker $1 $2 $3 $4 $5
}

alias glog='git log --graph --all --decorate  --oneline'
alias smysql='mysql.server start'
alias inb='ipython notebook --pylab=inline'
myvagrantup() {
 vagrant up $1
}
myvagrantssh() {
 vagrant ssh $1    
}
myvagranthalt() {
 vagrant halt $1
}
alias vup=myvagrantup
alias vssh=myvagrantssh
alias vhalt=myvagranthalt

alias d=docker
alias dl='docker ps -l -q'

# virtualenvwrapper stuff
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper_lazy.sh
