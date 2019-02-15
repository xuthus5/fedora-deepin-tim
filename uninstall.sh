#!/bin/bash
# Author: xuthus
# Time: 2019.2.14
# Function: 该脚本用于Fedora上一键卸载TIM，测试于 Fedora29-GNOME

#清理配置
Clear(){
	# libudis86.so remove
	sudo rm -f /usr/lib/libudis86.so.0
	# deepin-wine	remove
	sudo rm -rf /usr/lib/deepin-wine
    sudo rm -rf /usr/lib/i386-linux-gnu
	# deepin-tim remove
	rm -rf $HOME/.deepinwine
	# meta remove
	rm -rf $HOME/.local/share/run
    rm -rf $HOME/.local/share/applications/deepin.com.qq.office.desktop
}

Clear