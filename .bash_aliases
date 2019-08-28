#Misc aliases
alias la="ls -a"
alias ll="ls -al"
alias please="sudo !!"
alias subl="/mnt/c/Program\ Files/Sublime\ Text\ 3/subl.exe"
alias fs="grep -Ri"

#Git aliases
alias gi="git init"
alias gs="git status"
alias gf="git fetch"
alias gacp="git acp"

alias gd="git diff"
alias gdc="git diff --cached"
alias gds="git diff --name-status"		#git "diff last short"
alias gdl="git diff HEAD^ HEAD"			#git "diff last"
alias gdls="git diff --name-status HEAD^ HEAD"	#git "diff last short"

alias gl="git log"
alias gls="git log --stat -M20"
alias gll="git log --pretty=oneline --abbrev-commit -n 10"	#git "log line"

alias ga="git add --all"
alias gua="git reset HEAD --"	#git "unadd"

alias gc="git commit"
alias gca="git commit --amend"
alias gcac="git commit --amend -C HEAD"

alias gp="git push --all --follow-tags"
alias gpf="git push --force"
#alias gpsu="git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)"

alias gpl="git pull"

alias gck="git checkout"
alias grf="git checkout --"	#git "reset file"

alias gb="git branch"

alias gst="git stash"
alias gsp="git stash pop"
alias gsl="git stash list"
alias gsd="git stash drop"

alias gr="git reset"
alias grh="git reset --hard"

alias grb="git rebase"
alias grbo="git rebase origin/master"
alias gri="git rebase -i"
alias grc="git rebase --continue"
alias gra="git rebase --abort"

alias gcp="git cherry-pick"

#Debian development aliases
alias gbpb="gbp buildpackage"
alias udcv="uscan --download-current-version"
