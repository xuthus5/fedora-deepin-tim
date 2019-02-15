#!/bin/bash
# Author: xuthus
# Time: 2019.2.11
# Function: 该脚本用于Fedora上一键安装TIM，测试于 Fedora29-GNOME

#配置 wine 的 tim 运行环境
Config(){
	# libudis86.so
	sudo cp libudis86.so.0 /usr/lib
	# deepin-wine
	tar zvxf deepin-wine.tar.gz
	sudo mv usr/lib/* /usr/lib
	# deepin-tim
	tar Jxf tim.tar.xz
	mv .deepinwine $HOME/
	# meta
	tar zvxf meta.tar.gz
	mv usr/share/* $HOME/.local/share/
	rm -rf usr/
	chmod +x $HOME/.local/share/run/tim.sh
}

#运行
Run(){
	$HOME/.local/share/run/tim.sh
}

Config
Run
