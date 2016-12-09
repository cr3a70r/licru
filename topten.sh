#/bin/sh

# (c) https://gist.github.com/vodolaz095/e32cd4fd8418e321facf3b0d0a8ed867

# Shot top ten commands used from console by this user
# Показать десять самых популярных консольных комманд для этого пользователя

history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl | head -n10