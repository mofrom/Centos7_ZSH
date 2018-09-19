#!/bin/bash
#
#

function lvecho {
echo -e "\033[32m $1 \033[0m"
}

function hecho {
echo -e "\033[31m $1 \033[0m"
}

function fonts {
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..
}


rpm -q zsh
if [ $? -eq 0 ];then
    echo -n "zsh已安装,安装oh-my-zsh中 . . .  "
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
    echo -n "开始安装zsh . . .  "
    yum -y install zsh
    rpm -q zsh
    if [ $? -eq 0 ];then
        echo -n "zsh已成功安装 . . .  "
        echo "开始安装oh-my-zsh . . . "
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    else
        echo -n "zsh安装失败"
        exit 2
    fi
fi

sleep 1
rpm -q git
if [ $? -eq 0 ];then
    echo "git已安装,正在安装字体 . . . "
    fonts
else
    echo "git未安装 正在安装git . . . "
    yum -y install git
    rpm -q git
    if [ $? -eq 0 ];then
        echo "git安装成功,正在安装字体..."
        fonts
    else
        echo "git安装失败..."
    fi
fi
sleep 1
echo "安装主题"
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.zshrc ~/.zshrc.orig
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh
old=$(grep "^ZSH_THEME=" ~/.zshrc)
sed -i "s/$old/ZSH_THEME=\"agnoster\"/" ~/.zshrc
