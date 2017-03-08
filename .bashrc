# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
else
    export TERM='xterm-color'
fi

# git configurations

git config --global user.email kabhinav@gmail.com
git config --global user.name  abhinav13
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
source ~/R11brc
# source bash powerline
source ~/.bash-powerline.sh
alias cdt='cd $HOME/code/dell-internal/tempest_plugin/dell_tempest_plugin/tests/'
alias cds='cd $HOME/code/dell-internal/tempest_plugin/dell_tempest_plugin/tests/scenario'
