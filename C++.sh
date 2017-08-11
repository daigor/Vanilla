#!/usr/bin/env bash

#This is a simple bash-script to compile and run a C++(.cpp) programs in Linux shell
#Include final code extension (.cpp)
#Give permission to execute $chmod u+x C++.sh
#Example $./C++ HelloWorld.cpp

if [ -f $1 ]; then
  echo "Make & Run - $1"
  compiledFile=${1%.cpp}.out
  g++ $1 -o $compiledFile
  if [ $? -ne 0 ]; then
    echo "Error compiling code: $1"
  else
      echo -e "Executing...\n"
      ./$compiledFile
  fi
else
  echo "File $1 does not exist"
fi
