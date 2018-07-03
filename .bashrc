#Раскрашивание консоли
root_color="\[\e[7;31m\]"
not_root_color="\[\e[1;36m\]"
#Считываем eUID пользователя. Цвета в зав-ти рут или не рут
if [ `id -u` -eq "0" ]; then
    color="${root_color}"
else
    color="${not_root_color}"
fi
#строка приглашения bash
PS1="${color}\u\[\e[1;35m\]@\[\e[1;33m\]\h\[\e[1;32m\]\w\[\e[0m\]${color}\\$\[\e[0m\] "


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
alias upd='sudo aptitude update && sudo aptitude upgrade && sudo aptitude clean && sudo aptitude autoclean'

#ф-я для поиска строки в проекте на Yii2
function gr {
    grep -HnrF --exclude-dir={.idea,.git,vendor,runtime,rbac} $1 .
}

#git
alias g="git"
alias s="g status -s"
alias gp="g pull"
alias gl='g log --pretty=format:"%h - %cd : %s" --graph'
