#!bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#touch ~/.vim_runtime/my_configs/bundlerc.vim
#echo "
#set nocompatible              
#filetype off                
#set rtp+=~/.vim/bundle/Vundle.vim
#call vundle#begin()
#
#Plugin 'Valloric/YouCompleteMe'
#
#call vundle#end() 
#filetype plugin indent on
#" >> ~/.vim_runtime/my_configs/bundlerc.vim

echo "
try
source ~/.vim_runtime/my_configs/bundlerc.vim
catch
endtry
" >> ~/.vim_runtime/my_configs/my_configs.vim

vim +PluginInstall +qall
unamestr=`uname`

# ubuntu platform
if [[ "$unamestr" == 'Linux' ]]; then
   sudo apt-get install build-essential cmake
   sudo apt-get install python-dev python3-dev
# Mac platform
elif [[ "$unamestr" == 'Darwin' ]]; then
   brew install cmake
   clang
fi

cd ~/.vim/bundle/YouCompleteMe/
./install.py --all
