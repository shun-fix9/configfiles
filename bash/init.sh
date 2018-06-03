#!/bin/bash

git remote update --prune && git fetch --tags --prune && git checkout master && git pull

. $HOME/.config/bash/myplugin.sh
myplugin_load_all
myplugin_update

tune
logout
