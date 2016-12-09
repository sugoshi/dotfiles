# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

## カスタマイズ設定
# プロンプトの設定
PS1='\[\e[36m\]\W \$\[\e[0m\] '
