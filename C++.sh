#!/usr/bin/env bash

#Include final code extension (.cpp)
#Give permission to execute $chmod u+x C++.sh
#Example $./C++ HelloWorld.cpp

g++ $1 -o ${1%.cpp}.out
