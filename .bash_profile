# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin
PS1='\[\e[36m\]\W \$\[\e[0m\] '

export PATH
unset USERNAME
