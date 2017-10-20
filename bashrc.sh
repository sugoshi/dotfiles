# .bashrc

# User specific aliases and functions
function pss {
	ps $@ | tail -n +2
}

if [ "$OS" = "Windows_NT" ]; then
	function wincmd() (
		cmd=$1
		shift
		$cmd $* 1> >(iconv -f cp932 -t utf-8) 2> >(iconv -f cp932 -t utf-8)
	)
fi

function share_history {
	history -a
	history -c
	history -r
}
PROMPT_COMMAND='share_history'
