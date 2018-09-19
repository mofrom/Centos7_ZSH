#!/bin/bash
#Colors
cyan='\e[1;36m'
green='\e[1;32m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
blue='\e[1;34m'

xcyan='\e[0;36m'
xgreen='\e[0;32m'
xlightgreen='\e[0;32m'
xwhite='\e[0;37m'
xred='\e[0;31m'
xyellow='\e[0;33m'
xblue='\e[0;34m'

name="\e[1;34mDaily-Framework" #Name
Ver="\e[1;31mV1.0.0\033[0m" # Version
#系统与其他---------------------------------------------------------------------------------------
function Systems(){
	echo -e "$white【导航】${xblue}Linux日常化 -> ${xgreen}系统|其他"
	echo -e """
	$xcyan 1)$xgreen ✔  安装zsh && ohmyzsh		$xcyan 【小工具】$xgreen ✔  
	$xcyan 2)$xgreen ✔  安装主题				$xcyan 7)$xgreen ✔  待添加
	$xcyan 3)$xgreen ✔  默认请回车			$xcyan 8)$xgreen ✔  待添加
	$xcyan 4)$xgreen ✔  待添加				$xcyan 9)$xgreen ✔  待添加
	$xcyan 5)$xgreen ✔  待添加	       			$xcyan 10)$xgreen ✔  待添加
	$xcyan 6)$xgreen ✔  待添加 				$xcyan 11)$xgreen ✔  待添加
	$xcyan 0)$xred ✘  返回 ◀◀
	"""
}

Systems
echo -e "\033[32;49;1m [ DONE v1.0测试版 ] \033[39;49;0m"
read -p "请输入一个选项:" op

case $op in
1)
    echo "安装zsh && ohmyzsh"
    exec ./zsh-ohmyzsh.sh;;
2)
    echo "安装主题"
    exec ./them.sh;;
0)
    echo "返回"
    exit 2 ;;


*)
    echo "安装zsh && ohmyzsh"
    exec ./zsh-ohmyzsh.sh;;
esac

