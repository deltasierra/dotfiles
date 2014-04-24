# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Make bash append rather than overwrite the history on disk
#shopt -s histappend

# Uncomment to turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
#[[ -f /etc/bash_completion ]] && . /etc/bash_completion

# Interactive operation...
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# alias less='less -r'              # raw control characters
alias whence='type -a'              # like where
alias grep='grep --color'           # show matches in colour
alias egrep='egrep --color=auto'    # show matches in colour
alias fgrep='fgrep --color=auto'    # show matches in colour
alias ls='ls -hF --color=always'    # classify files in colour
alias less='less -R'                # ls pipe less is in colour
d=~/.dircolors
test -r $d && eval "$(dircolors $d)"

alias vi='vim'
alias more='less'

settitle () 
{ 
   echo -ne "\e]2;$@\a\e]1;$@\a"; 
}

set -o vi
export PS1="$ "
export TERM=xterm-256color
export CDPATH=.:~/Documents:~/Downloads:~

