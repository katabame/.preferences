#!/usr/bin/bash

rm -rf $HOME/.config/fuzzel && ln -fsn $HOME/.preferences/.config/fuzzel $HOME/.config/
rm -rf $HOME/.config/fcitx5 && ln -fsn $HOME/.preferences/.config/fcitx5 $HOME/.config/
rm -rf $HOME/.config/xremap && ln -fsn $HOME/.preferences/.config/xremap $HOME/.config/
rm -rf $HOME/.config/waybar && ln -fsn $HOME/.preferences/.config/waybar $HOME/.config/
rm -rf $HOME/.config/swaync && ln -fsn $HOME/.preferences/.config/swaync $HOME/.config/
rm -rf $HOME/.config/hypr && ln -fsn $HOME/.preferences/.config/hypr $HOME/.config/

rm -rf $HOME/.bashrc && ln -fsn $HOME/.preferences/.bashrc $HOME/.bashrc
rm -rf $HOME/.gitconfig && ln -fsn $HOME/.preferences/.gitconfig $HOME/.gitconfig
rm -rf $HOME/.profile && ln -fsn $HOME/.preferences/.profile $HOME/.profile
