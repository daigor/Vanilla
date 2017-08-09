#!/usr/bin/env bash

#Include final code extension (.cpp)
#Give permission to execute $chmod u+x C++.sh
#Example $./C++ HelloWorld.cpp

if [ -f $1 ]; then
  echo "Make & Run - $1"
  compiledFile=${1%.cpp}.out
  if [ -f $compiledFile ];then
    rm -f $compiledFile
  fi
  g++ $1 -o $compiledFile
  if [ -f $compiledFile ]; then
    echo -e "Executing...\n"
    ./$compiledFile
  else
    echo "Error compiling code: $1"
  fi
else
  echo "File $1 does not exist"
fi
