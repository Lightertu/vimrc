#!bin/bash
git clone https://github.com/Valloric/YouCompleteMe.git  ~/.vim_runtime/sources_non_forked/YouCompleteMe
cd ~/.vim_runtime/sources_non_forked/YouCompleteMe/

git submodule update --init --recursive 
./install.py
