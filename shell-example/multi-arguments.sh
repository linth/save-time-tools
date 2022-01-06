#!bin/sh

# refer to the resource as follows:
# https://unix.stackexchange.com/questions/31414/how-can-i-pass-a-command-line-argument-into-a-shell-script

# -eq : 等於
# -ne : 不等於
# -gt : 大於
# -ge : 大於或等於
# -lt : 小於
# -le : 小於或等於

echo "Hello, please type your age:"
read my_age

# # no first argument.
# noFirstArgument() {
#     echo -e "no argument 1."
# }

# # no second argument.
# noSecondArgument() {
#     echo -e "no argument 2."
# }

# # both arguments are existed.
# bothExisted() {
#     echo -e "arguments existed."
# }

# if [ $first_arg -eq 0 ] & [ $second_arg -eq 0 ]; then
#     echo -e "first argument: $1; second argument: $2"
# else
#     echo -e "argument hasn't existed."
# fi

if [$my_age -eq 18]; then
    echo "your age is 18."
elif [$my_age -lt 18]; then
    echo "you are child."
else
    echo "you are adult."
fi

echo "your age is $my_age"