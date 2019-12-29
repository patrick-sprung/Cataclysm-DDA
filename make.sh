#!/usr/bin/fish

if test (count $argv) -lt 1
    echo "Pass job count!"
    exit
end
    
set count $argv[1]
    
set cmd "make -j$count USE_HOME_DIR=1 RELEASE=1 LTO=1 TILES=1 SOUND=1 LUA=1 LOCALIZE=0 CLANG=1 CCACHE=1 RUNTESTS=0"
echo $cmd
eval $cmd
