#-----------
# ~/.bashrc
#-----------

# _   _ _____ __  __
#| \ | | ____|  \/  |
#|  \| |  _| | |\/| |
#| |\  | |___| |  | |
#|_| \_|_____|_|  |_|


#dont touch this haha
[[ $- != *i* ]] && return

#puts aliases in a seperate file
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

#Makes it look like that
export PS1="\@ [\[$(tput sgr0)\]\[\033[38;5;196m\]\h\[$(tput sgr0)\]]:\w>\[$(tput sgr0)\]"

export EDITOR='nano'
