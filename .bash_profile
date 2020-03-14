alias pdfcrop="~/Documents/kobo_config/pdfconversion/k2pdfopt"
alias nvim="nvim -u ~/.config/nvim/init.vim"
alias ll="ls -alh"
alias grep="grep --color"
alias cronedit='var1=$EDITOR;export EDITOR=nano;crontab -e; export EDITOR=$var1'

export TERM=xterm-256color
export EDITOR=nvim


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
source ~/dotfiles/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$BLUE\u$RED@$BLUE\h $RED\w$YELLOW\$(__git_ps1) $BLUE\D{%F %T} \n$RED$ $RESET"
# export PS1="${BLUE}\u\[$(tput sgr0)\]${RED}@\[$(tput sgr0)\]${BLUE}\h\[$(tput sgr0)\] ${RED}\w\[$(tput sgr0)\]\$(parse_git_branch) ${BLUE}\D{%F %T}\[$(tput sgr0)\] \n${RED}$\[$(tput sgr0)\] "

# Enable tab completion for git
source ~/dotfiles/git-completion.sh


# TODO don't remember what this was for
# if [ -f ~/.bashrc ]; then
#     source ~/.bashrc
# fi

# [[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
#
# # show git branch name
# parse_git_branch() {
#      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
# }

#export VIMRUNTIME=/usr/local/Cellar/vim/8.0.0586/share/vim/vim80
#export VIMRUNTIME=/usr/local/Cellar/vim/8.0.1750/share/vim/vim80
# unset VIMRUNTIME

#alias crontab="VIM_CRONTAB=true crontab"

# # get current branch in git repo
# function parse_git_branch() {
# 	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
# 	if [ ! "${BRANCH}" == "" ]
# 	then
# 		STAT=`parse_git_dirty`
# 		echo "[${BRANCH}${STAT}]"
# 	else
# 		echo ""
# 	fi
# }

# # get current status of git repo
# function parse_git_dirty {
# 	status=`git status 2>&1 | tee`
# 	dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
# 	untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
# 	ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
# 	newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
# 	renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
# 	deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
# 	bits=''
# 	if [ "${renamed}" == "0" ]; then
# 		bits=">${bits}"
# 	fi
# 	if [ "${ahead}" == "0" ]; then
# 		bits="*${bits}"
# 	fi
# 	if [ "${newfile}" == "0" ]; then
# 		bits="+${bits}"
# 	fi
# 	if [ "${untracked}" == "0" ]; then
# 		bits="?${bits}"
# 	fi
# 	if [ "${deleted}" == "0" ]; then
# 		bits="x${bits}"
# 	fi
# 	if [ "${dirty}" == "0" ]; then
# 		bits="!${bits}"
# 	fi
# 	if [ ! "${bits}" == "" ]; then
# 		echo " ${bits}"
# 	else
# 		echo ""[
# 	fi
# }
