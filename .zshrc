# Comment test for re-add
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
autoload -U compinit; compinit


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

#Current Promp Theme
#eval "$(starship init zsh)"
#p10k 
source ~/.config/zsh-plugins/powerlevel10k/powerlevel10k.zsh-theme
#colored man pages
source ~/.config/zsh-plugins/colored-man.zsh 
## Source Highlighting 
source ~/.config/zsh-plugins/highlighting.zsh

#deno

export DENO_INSTALL="/home/shonuff/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"


## fnm

export PATH=/home/shonuff/.fnm:$PATH 
eval "$(fnm env --use-on-cd)"

#Load Pythong Enviroment
python_venv() {
  MYVENV=./.venv
  # when you cd into a folder that contains $MYVENV
  [[ -d $MYVENV ]] && source $MYVENV/bin/activate > /dev/null 2>&1
  # when you cd into a folder that doesn't
  [[ ! -d $MYVENV ]] && deactivate > /dev/null 2>&1
}
autoload -U add-zsh-hook
add-zsh-hook chpwd python_venv

# Activate python enviroment
python_venv

### START ALIAS SECTION 

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
# source zsh auto suggestions 
source ~/.config/zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source Zsh Syntax Highlighting
source ~/.config/zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

# FZF commands 
 source /usr/share/doc/fzf/examples/key-bindings.zsh
 source /usr/share/doc/fzf/examples/completion.zsh
# Insitate a history file 
HISTFILE=~/.zsh_history 
HISTSIZE=1000
SAVEHIST=1000 
setopt appendhistory

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
