#!/bin/bash
echo "Tools collected from around the net or written bY me"

RET_SUCCESS=0 
RET_FAILURE=-1

tools[1]="textfind"
tools[2]="prettyuser"
tools[3]="ipinfo"
tools[4]="nakedip"
tools[5]="a2strace"
tools[6]="showservice"
tools[7]="lschanged"
tools[8]="memhungry"
tools[9]="screencast.sh"
tools[10]="clear-docker-cache"
tools[11]="guimessage"
tools[12]="topten.sh"
tools[13]="vdunpak"


if [ -z "$1" ]
then 
	echo -en "\033[37m Usage: \033[0m licru install \n "
	echo "             uninstall"
	echo "             reinstall"
fi

install_tools()
{
	echo "========== Install in progress... =========="

	for tool in "${tools[@]}"
	do
		echo -en "\033[32m Installing \033[0m ... " "\033[42m $tool \033[m\n"
		cp "$tool" /usr/bin/"$tool"
	done
	
	return $RET_SUCCESS
}

uninstall_tools()
{
	echo "========== Uninstall in progress... =========="

	for tool in "${tools[@]}"
	do 
		echo -en "\033[31m Uninstalling \033[0m ... " "\033[41m $tool \033[0m\n"
		rm /usr/bin/"$tool"
	done

	return $RET_FAILURE
}

reinstall_tools()
{
	uninstall_tools
	install_tools
}


if [ "install" = "$1" ]
then 
	install_tools
fi

if [ "uninstall" = "$1" ]
then
	uninstall_tools
fi

if [ "reinstall" = "$1" ]
then
	reinstall_tools
fi

#echo "installing textfind ..."
#ln -s textfind /usr/bin/textfind
#chmod +x /usr/bin/textfind
