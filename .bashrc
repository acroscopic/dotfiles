#-----------
# ~/.bashrc
#-----------
# Bash initialization script for interactive shells.
# Loads aliases, custom prompt, sets editor, and defines useful settings.


# Exit early if not running interactively
[[ $- != *i* ]] && return

#puts aliases in a seperate file
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Set prompt appearance (Don't modify this line directly, find a website if you want to change it)
export PS1="\@ [\[$(tput sgr0)\]\[\033[38;5;196m\]\u\[\033[37m\]@\[\033[38;5;196m\]\h\[$(tput sgr0)\]]:\w>\[$(tput sgr0)\]"

# Set default text editor and terminal emulator
export EDITOR='nano'
export TERMINAL='terminator'


# Color support for ls and grep
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Add user scripts and local bin to PATH
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

# Save history across sessions
HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL=ignoredups:erasedups
shopt -s histappend
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"


## Note: If you are using my .bash_profile, it will source .bashrc
## I.E. if you uncomment this line, it will have an infinite loop
# Use ~/.bash_profile for login shells
#if [ -f ~/.bash_profile ]; then
#    source ~/.bash_profile
#fi
