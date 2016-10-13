#!bin/bash

git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

cd ..
mv vimrc ~/.vim_runtime
echo 'source ~/.vim_runtime/my_configs/my_configs.vim' > ~/.vimrc

echo "My personal config is successfully installed!"

