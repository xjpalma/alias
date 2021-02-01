## list
alias ll='ls -l --human-readable --color=auto'

## Show hidden files #
alias l.='ls -l --human-readable --directory .* --color=auto'

## list by size
alias lz='ls --human-readable --size -1 -S --classify --color=auto'

## list by modification time
alias lt='ls -l --human-readable -t -1 -color=auto'

## count files in current dir
alias count='find . -type f | wc -l'

## a quick way to get out of current directory #
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../..'
alias ....='cd ../../../..'
alias .....='cd ../../../../..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

## colorize the grep command output for ease of use
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

## do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'

## confirmation
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

## create dir and parent directories as needed
alias mkdir='mkdir --parents --verbose'

## Add a copy progress bar
alias cpv='rsync -ah --info=progress2'

alias df='df -H'
alias du='du -ch'

## make mount command output pretty and human readable format
alias mount='mount | column -t'

## view only mounted drives
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"

## handy short cuts #
alias h='history'
alias j='jobs -l'
alias c='clear'

alias more=less

## Find a command in your grep history
alias gh='history|grep'

## Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

## generate sha1 digest
alias sha1='openssl sha1'

## stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
## do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'

## set vim as default
alias vi=vim
alias svi='sudo vi'
alias vis='vim "+set si"'
alias edit='vim'

## reboot / halt / poweroff
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

## memory
alias free='free -m -l -t'

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## get top process eating cpu #
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

## Get server cpu info #
alias cpuinfo='lscpu'

## older system use /proc/cpuinfo #
#alias cpuinfo='less /proc/cpuinfo'

## get GPU ram on desktop / laptop#
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

alias wget='wget -c '

## get public ip
alias ipe='curl ipinfo.io/ip'

## get private ip
alias ipi='hostname -I'

## htop user
alias htop='htop -u $USER'


