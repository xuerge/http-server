#!/bin/bash

port=8080
path=$(pwd)

while getopts ":p:d:" opt
do
    case $opt in
        p)
        port=$OPTARG
        ;;
        d)
        path=$OPTARG
        ;;
        ?)
        echo "未知参数"
        exit 1;;
    esac
done

java -jar ./lib/http-server-1.0.jar $port $path
