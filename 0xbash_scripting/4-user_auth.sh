#1/bin/bash
user_name="Tashy Melina"
passwords="tashy@237_"
echo "Enter user name and password: "
read name
read password

if [ "$user_name" == "$name" ] && [ "$passwords" == "$password" ] 
 then
echo "Password Validated"
else
echo "Incorrect user name or password"
fi