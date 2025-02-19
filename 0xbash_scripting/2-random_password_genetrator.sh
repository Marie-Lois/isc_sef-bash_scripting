#!/bin/bash
echo "Enter password length(minimum 8): "
read length

while [ $length -lt 8 ]; do
echo "Password length must be atleast 8. Please try again"
read length
done
password=$(tr -dc 'a-zA-Z0-9!@#$%&*' < /dev/urandom | fold -w $length | head -n 1)
echo "Generated password: $password"
#</dev/urandom tr -dc 'A-Za-z0-9@#$%&'head -c 16