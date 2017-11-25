# .bash_profile

script_dir="$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd)"

# Get the aliases and functions
if [ -f $script_dir/bashrc.sh ]; then
	. $script_dir/bashrc.sh
fi

# User specific environment and startup programs
export EDITOR='vi'
export HISTSIZE=1000
export LESS='--QUIET --no-init -M -R'
export LESSCHARSET='utf-8'
export PS1='\[\e[32m\]\u@\h\[\e[0m\] \[\e[33m\]\w\[\e[0m\]\n\$ '

