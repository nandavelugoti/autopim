#!/bin/bash

export PATH=$PATH:~/memgaze/xlib/perf/linux-5.18.14/tools/perf

app=$1
args=$2
MEMGAZE_PATH=~/memgaze

echo app=$app
echo args=$args

$MEMGAZE_PATH/install/bin/memgaze-inst $app 
$MEMGAZE_PATH/install/bin/memgaze-run -p 100000 memgaze-$app/$app-memgaze $args
$MEMGAZE_PATH/install/bin/memgaze-xtrace -i $app-memgaze-trace-b8192-p100000/

