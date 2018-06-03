#!/bin/bash

pwd=$(pwd)
cd $HOME/.config
git remote update --prune && git fetch --tags --prune && git checkout master && git pull
cd $pwd

. $HOME/.config/bash/myplugin.sh
myplugin_load_all
myplugin_update

tune
logout
