#!/bin/bash

if [ ! -n "$1" ]; then
    echo "エラー: 引数を指定してください"
    exit 1
fi

data_name=$1
cat $data_name/${data_name}_tgz_* > $data_name.tgz
tar -zxvf $data_name.tgz

rm -f $data_name.tgz
