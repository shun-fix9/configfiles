#!/bin/bash

myplugin_setup(){
  local root
  local path
  local user
  local name

  root=$(myplugin_root)

  path=$1; shift

  user=$(basename $(dirname "$path"))
  name=$(basename "$path")
  name=${name%.git}

  mkdir -p $root/$user
  if [ ! -d $root/$user/$name ]; then
    git clone $path $root/$user/$name
  fi
}

myplugin_update(){
  local pwd
  local root
  local target

  pwd=$(pwd)
  root=$(myplugin_root)

  for target in $root/*/*; do
    if [ -d "$target" ]; then
      cd $target
      git remote update --prune && git fetch --tags --prune && git checkout master && git pull
    fi
  done

  cd $pwd
}

myplugin_load(){
  local root
  local target

  root=$(myplugin_root)

  PATH=$(echo $PATH | sed "s#:$root/[^:]\+/bin##g")

  for target in $root/*/*/bin; do
    if [ -d "$target" ]; then
      PATH=$PATH:$target
    fi
  done
}

myplugin_load_all(){
  . $HOME/.config/bash/plugins.sh
  myplugin_load
}

myplugin_root(){
  echo "$HOME/.plugins"
}
