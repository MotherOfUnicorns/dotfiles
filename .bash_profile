alias nvim="nvim -u $HOME/.config/nvim/init.vim"
alias ll="ls -alh"

export TERM=xterm-256color
export EDITOR=nvim
export LC_ALL=en_US.UTF-8

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

### colours ###
BLUE="\[\033[38;5;33m\]"
RED="\[\033[38;1;31m\]"
YELLOW="\[\033[38;5;228m\]"
GREEN="\[\033[0;32m\]"
# BLUE="\[\033[0;34m\]"
PURPLE="\[\033[0;35m\]"
RESET="\[\033[0m\]"


### git settings ###
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push -u"
alias gd="git diff"
alias gb="git branch"
alias gch="git checkout"
alias gl="git log --graph"

# Change command prompt
source $HOME/dotfiles/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$BLUE\u$RED@$BLUE\h $RED\w$YELLOW\$(__git_ps1) $BLUE\D{%F %T} \n$RED$ $RESET"
# export PS1="${BLUE}\u\[$(tput sgr0)\]${RED}@\[$(tput sgr0)\]${BLUE}\h\[$(tput sgr0)\] ${RED}\w\[$(tput sgr0)\]\$(parse_git_branch) ${BLUE}\D{%F %T}\[$(tput sgr0)\] \n${RED}$\[$(tput sgr0)\] "

# Enable tab completion for git
source $HOME/dotfiles/git-completion.sh

# custom shell functions
source $HOME/dotfiles/shell_functions.sh


# some mac-only stuff
if [ "$(uname -s)" = "Darwin" ]
then
    alias cronedit='var1=$EDITOR;export EDITOR=nano;crontab -e; export EDITOR=$var1'
    export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
    alias pdfcrop="$HOME/Documents/kobo_config/pdfconversion/k2pdfopt"
fi

eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"
