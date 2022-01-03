#!bin/bash
# refer to the resource as follows:
# https://unix.stackexchange.com/questions/31414/how-can-i-pass-a-command-line-argument-into-a-shell-script

# -eq : 等於
# -ne : 不等於
# -gt : 大於
# -ge : 大於或等於
# -lt : 小於
# -le : 小於或等於

if [[ $1 != "" ]]; then
    echo "first argument: $1"
else
    echo "please type first argument."
    #TODO: add break block.
fi

if [[ $2 != "" ]]; then
    echo "second argument: $2"
else
    echo "please type second argument."
fi

if [[ $1 != "" && $2 != "" ]]; then
    echo "total words: $1  $2"
fi

