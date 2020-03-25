
# Git branch bash completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
  
  # Add git completion to aliases
  __git_complete gch _git_checkout
  __git_complete gm _git_merge
  __git_complete gp _git_pull
  __git_complete gpush _git_push
  __git_complete gf _git_fetch
  __git_complete ga _git_add
  __git_complete gco _git_commit
fi

# Make sure you actually have those aliases defined, of course.
alias gch="git checkout"
alias gm="git merge"
alias gp="git pull"
alias gpush="git push"
alias gf="git fetch"
alias ga="git add"
alias gco="git commit"
