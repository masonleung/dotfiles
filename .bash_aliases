##############
# linux command
##############
alias ls='ls --color=auto'
alias grep='grep --color=auto'

##############
# k8s command
##############
alias k="kubectl"
alias kx="kubectx"

##############
# git command
##############
alias gco='git checkout'
alias gpr='git pull --rebase origin main'
alias gcb='git checkout -b'
alias gbd='git branch -D'
alias gl='git log'
alias gs='git status'
alias ga.='git add .'
alias ga='git add'
alias gpo='git push origin --no-verify'
alias gm='git commit -n -m'
alias gca='git commit --amend'
alias grc='git rebase --continue' 

##############
# git config
##############
git config --global --replace-all core.pager "less -F -X"
git config --global diff.tool vimdiff
git config --global difftool.prompt false
git config --global alias.d difftool

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "
