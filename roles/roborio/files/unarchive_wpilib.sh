#!/bin/bash

src=$1
dest=$2

if [[ ! -e $src ]]; then
  echo "$src does not exist"
  exit 1
fi

tmp_dir=$(mktemp --directory)
cd $tmp_dir
unzip -qq $src

if [[ ! -d $dest ]]; then
  mkdir -p $dest
  chmod 0775 $dest
fi

cd $dest
unzip -qq $tmp_dir/resources/cpp.zip
