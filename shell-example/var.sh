#!bin/bash
# Reference:
# http://linux.vbird.org/linux_basic/0320bash.php

# set variable.
version=$(uname -r)
var="hello world"
var1="outside function"
loc=$(pwd)

echo "var = $var"
echo "version: $version"
echo "var1: $var1"
echo "where you are: $loc"