alias du="du -sh"
alias df="df -hT"
alias fh="free -h"
alias cx="chmod +x"
alias qls=qemu-ls
alias dm=dmesg
alias r="readlink -f"
alias a="./a.out"
alias gt=gtags
alias ns="firejail --noprofile --netns=proxy --quiet"
alias pc="proxychains -q"
alias cai="sudo chattr +i"
alias cri="sudo chattr -i"
alias tps="tput smam"
alias hir="history -r"
alias fig="find | grep"
alias ll="ls -l"
alias d=date
alias dd="dd status=progress"
alias xg="find . -type f -print0 | xargs -0 -P0 grep -I --color=always"
alias kg="cat files | xargs -P0 grep -I --color=always"

alias ia="ip a"
alias ir="ip route"

alias gs="git status"
alias gw="git show"
alias gd="git diff"
alias gl="git log"
alias gb="git branch"
alias gc="git checkout"
alias gcm="git checkout master"
alias gr="git remote"
alias gm="git merge"

alias dn="dnf"
alias dy="dnf install -y --nogpgcheck"
alias ds="dnf search"
alias dp="dnf provides"

alias ssh="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
alias scp="scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
alias lssh="sshpass -p s ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
alias lscp="sshpass -p s scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
