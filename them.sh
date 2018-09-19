#!/bin/bash
#
#
echo "主题文件已下载至本地,如果不知到用什么主题,可参考官方WIKI
地址:https://github.com/robbyrussell/oh-my-zsh/wiki/Themes#mrtazz"

old=$(grep "^ZSH_THEME=" ~/.zshrc)
read -p "Please enter the theme you want to change :" new
sed -i "s/$old/ZSH_THEME="$new"/" ~/.zshrc

new2=$(grep "^ZSH_THEME=" ~/.zshrc)
if [ "$old" == \"$new2\" ];then
    echo "更换成功"
else
    echo "更改失败,请自行去~/.zshrc修改配置文件"
fi
