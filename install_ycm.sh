#!bin/bash

unamestr=`uname`

# ubuntu platform
if [[ "$unamestr" == 'Linux' ]]; then
   sudo apt-get install build-essential cmake
   sudo apt-get install python-dev python3-dev
elif [[ "$unamestr" == 'Darwin' ]]; then
   brew install cmake
   clang
fi

git clone https://github.com/Valloric/YouCompleteMe.git  ~/.vim_runtime/sources_non_forked/YouCompleteMe
cd ~/.vim_runtime/sources_non_forked/YouCompleteMe/

git submodule update --init --recursive 
./install.py --all
