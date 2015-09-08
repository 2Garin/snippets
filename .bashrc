# ПРИМЕР импорта в .bashrc
#if [ -f /home/user/repos/.bashrc ]; then
#    source /home/user/repos/.bashrc
#fi

#Раскрашивание консоли
root_color="\[\e[7;31m\]"
not_root_color="\[\e[1;32m\]"
#Считываем eUID пользователя. Цвета в зав-ти рут или не рут
if [ `id -u` -eq "0" ]; then
    color="${root_color}"
else
    color="${not_root_color}"
fi
#строка приглашения bash
PS1="\[\e[1;36m\][${color}\u\[\e[0;35m\]@\h\[\e[1;33m\]\w\[\e[1;36m\]]\[\e[0m\]${color}\\$\[\e[0m\] "

#Алиасы для раскраски вывода команд с помощью grc.
alias ping='grc ping'
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

#git
alias g="git"
alias s="g status -s"
alias gp="g pull"