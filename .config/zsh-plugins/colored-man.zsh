
export LESS=-R         
export LESS_TERMCAP_mb=$'\E[01;31m' # begin blinking
export LESS_TERMCAP_md=$'\E[01;35m' # begin bold    
export LESS_TERMCAP_me=$'\E[0m' # end mode          
export LESS_TERMCAP_se=$'\E[0m' # end standout-mode
export LESS_TERMCAP_so=$'\E[01;44;37m' # begin standout-mode
export LESS_TERMCAP_ue=$'\E[0m' # end underline
export LESS_TERMCAP_us=$'\E[01;36m' # begin underline
export LESSOPEN='| /usr/bin/highlight -O ansi %s 2>/dev/null'
        

