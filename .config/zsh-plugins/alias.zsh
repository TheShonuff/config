# Alias for NVIM 
alias n="nvim"
# Alias for luamake
alias luamake=/luamake

# Alias for GitRepo Dotfiles
alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

# Alias EXA a replacement for ls 
#list folders
alias ls="exa --icons --color=always --group-directories-first"
# list all documents in a folder
alias list="exa -aIF --icons --color=always --group-directories-first"
# list long view of all folders and documents
alias la="exa --long -a --icons --header --color=always --group-directories-first"
alias lf="exa -F --icons --color=always --group-directories-first"
alias l.='exa -a |egrep "^\."'
# Change Top to display nice python dashboard
alias top="bpytop"
# Access to quick python repl 
alias repl="ipython"
# Change pnpm to a shorter command 
alias pn="pnpm"
# Perform EASY update 
alias update="sudo apt update"
# Perform EASY upgrade 
alias upgrade="sudo apt upgrade"
# Load cheat sheets
alias cheat="cht.sh --shell"
# Jump to School Folder 
# ########################################## #
# Directory Aliases
alias school="cd ~/Documents/School/"
### END ALIAS SECTIONS
#
