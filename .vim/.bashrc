# NICE GIT flavoured PS1
GREEN='\[\033[1;32m\]'
BLUE='\[\033[1;34m\]'
RED='\[\033[1;31m\]'
YELLOW='\[\033[1;33m\]'
VIOLET='\[\033[1;35m\]'
DARK='\[\033[1;30m\]'
WHITE='\[\033[1;37m\]'
NULL='\[\033[00m\]'

GIT_PS1_SHOWDIRTYSTATE=true

PS1="$GREEN\u$DARK@\h$BLUE:\w$NULL $DARK\$(__git_ps1 \"(branch:$YELLOW%s$DARK)\")$WHITE\$$NULL "
