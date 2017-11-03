# .bashrc

script_dir="$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd)"
dotfiles_bashrc="1"

# User specific aliases and functions
if [ -f $script_dir/bash_aliases.sh ]; then
	. $script_dir/bash_aliases.sh
fi

# User specific aliases and functions
function pss {
	ps $@ | tail -n +2
}

if [ "$OS" = "Windows_NT" ]; then
	function wincmd() (
		cmd=$1
		shift
		$cmd $@ 1> >(iconv -cs -f cp932 -t utf-8) 2> >(iconv -cs -f cp932 -t utf-8)
	)
	function winopen() {
		if [ $# -eq 0 ]; then
			target="`pwd -W`"
		else
			target="$1"
		fi
		cmd /C "start $target"
	}
fi

function share_history {
	history -a
	history -c
	history -r
}
PROMPT_COMMAND='share_history'
HISTCONTROL=ignoreboth
HISTIGNORE='?:??:???:exit:bash'
HISTTIMEFORMAT='%F %T '
