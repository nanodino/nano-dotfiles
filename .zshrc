eval "$(nodenv init -)"
eval "$(pyenv init -)"

# pnpm
export PNPM_HOME="/Users/nancy/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm endeval "$(direnv hook zsh)"
eval "$(direnv hook zsh)"

#work with git
autoload -Uz compinit && compinit
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT='${vcs_info_msg_0_}'
# PROMPT='${vcs_info_msg_0_}%# '
zstyle ':vcs_info:git:*' formats '%b'


#alias
function nb(){
	git checkout -b $1
	git push -u
}

function pf(){
git fetch
git pull
}

function yolo(){
   rm -rf node_modules && $1 i
}

function gmm(){
	git merge $1
}

function grm(){
	git rebase -i $1
}

alias gs="git status"
alias gd="git diff"
alias gadd="git add ."
alias gst="git stash"
alias gc="git commit"
alias gco="git checkout"
alias gcp="git cherry-pick"
alias gp="git push"
alias gl="git log -n 15 --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias whereami="git branch"
alias puime="git branch"


alias c="clear"
alias cd..="cd .."
alias cls="clear && ls"
alias ls="ls --color=tty"
alias reload="source ~/.zshrc"
alias please="sudo"
alias ffs=sudo
alias usd="cd ~/UpdateStaticData"
alias rdapi="cd ~/RouteDashboardAPI"
alias bs="cd ~/backend-services"
alias scripts="cd ~/scripts"
alias holidays="cd ~/date-holidays"
alias bgtfs="cd ~/bgtfsNodeLib"
alias csv="column -s, -t"
alias infra="cd ~/infra"
