#!/bin/bash -x
function firstName() {
pat="^[A-Z]+[a-zA-Z]{2,}$"
if [[ $fname =~ $pat ]]
then
	echo Valid
else
	echo Not Valid Reenter Firstname
fi
}

read -p "Enter First Name: " fname
firstName
