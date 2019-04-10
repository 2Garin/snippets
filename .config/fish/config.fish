set PATH $PATH /usr/local/bin
export PATH

#Алиасы для раскраски вывода команд с помощью grc.
alias ping='grc ping'
alias ping6='grc ping6'
alias traceroute='grc traceroute'
alias make='grc make'
alias diff='grc diff'
alias cvs='grc cvs'
alias netstat='grc netstat'
alias logc='grc cat'
alias logt='grc tail'
alias logh='grc head'
alias less='less --RAW-CONTROL-CHARS'

#обновление списка пакетов и самих пакетов одной командой
alias upd='sudo apt update; sudo apt upgrade; sudo apt clean; sudo apt autoclean'

#git
alias g="git"
alias gc="g clone"
alias s="g status -s"
alias gp="g pull"
alias gl='g log --pretty=format:"%h - %cd : %s" --graph'

#ф-я для поиска строки в проекте на Yii2
function gr
    grep -HnrF --exclude-dir={.idea,.git,vendor,runtime,rbac} $1 .
end
