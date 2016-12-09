# licru
Linux server-side scripts i use everyday  
  
#Install/Deinstall  
To install simply execute ./licru.sh install\n  
To deinstall execute ./licru.sh deinstall   
And reinstall ./licru reinstall - Usefull to update all scripts after git pull.  
  
By the default it installs scripts to /usr/bin directory.   
Sometime i would add custom install directory, if needed.  
  
#Available tools  
  
a2strace    - Easily strace all apache2 workers. Works on Debian, RedHat  
ipinfo      - Your public(external) IP information.   
lschanged   - List last 10 sorted files from directory by size  
memhungry   - Takes argument of process name you want to calculate memory usage   
nakedip     - Only prints your external IP address  
prettyuser  - Pretty print given users info of ID and groups  
showservice - Print all running services using systemctl in service style with description  
textfind    - Finds given text in current folder with file names  
tea.sh      - timer for making tea

screencast.sh      - make ffmpeg video screencast
clear-docker-cache - clear docker cache
guimessage         - send message to X server - works even from SSH console, when the same user is using X server
topten.sh          - show top 10 most popular shell commands for this user
vdunpak	           - shell command to open any archive
  
Coming soon my other tools.  



