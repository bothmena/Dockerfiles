#!/bin/bash


# making docker auto-start
sudo update-rc.d docker defaults

# adding aliases files and loading them in .bashrc
touch ~/.bash_aliases
echo "alias get_ip='ip address | grep \"inet.*eth0\" | grep -E \"[0-9]([0-9.])+[0-9]\" -o | head -n 1'" >> ~/.bash_aliases
# shellcheck disable=SC2016
cmd='start $(get_ip)'
echo "alias dnotebook_drl='docker run -it -p 8888:8888 -v /mnt/c/Users/aymen/Projects/RL_Training/deep-reinforcement-learning/:/workspace bothmena/drl-pytorch-notebook '/bin/bash' -c \"$cmd\"'" >> ~/.bash_aliases
echo "alias dnotebook_pytorch='docker run -it -p 8888:8888 -v /mnt/c/Users/aymen/Projects/Notebooks/:/workspace bothmena/pytorch-notebook '/bin/bash' -c \"$cmd\"'" >> ~/.bash_aliases
echo ". ~/.bash_aliases" >> ~/.bashrc
# shellcheck disable=SC1090
source ~/.bashrc
