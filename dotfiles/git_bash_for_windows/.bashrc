# Enable programmable completion features.
if [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi
 
# Set the PS1 prompt (with colors).
# Based on http://www-128.ibm.com/developerworks/linux/library/l-tip-prompt/
# And http://networking.ringofsaturn.com/Unix/Bash-prompts.php .
PS1="\[\e[36;1m\]\h:\[\e[32;1m\]\w $ \[\e[0m\]"
 
# Set the default editor to vim.
export EDITOR=vim
 
# Avoid succesive duplicates in the bash command history.
export HISTCONTROL=ignoredups
 
# Append commands to the bash command history file (~/.bash_history)
# instead of overwriting it.
shopt -s histappend
 
# Append commands to the history every time a prompt is shown,
# instead of after closing the session.
PROMPT_COMMAND='history -a'
 
# Add bash aliases.
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

pyt() 
{
 py -m pytest $1    
}

alias ls='ls --color=auto -alhX'
alias glog='git log --oneline'
alias python3='py -3' # for Windows, make sure to '$ unset PYTHONPATH' 
alias pytest=pyt

# virtualenvwrapper 
export WORKON_HOME=$HOME/.virtualenvs
#export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_SCRIPT=/c/Python27/Scripts/virtualenvwrapper.sh
. /c/Python27/Scripts/virtualenvwrapper_lazy.sh
