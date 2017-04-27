#!bin/bash

git clone https://github.com/gpakosz/.tmux.git
n -s -f .tmux/.tmux.conf
p .tmux/.tmux.conf.local .

echo "tmux has been successfully configged"
