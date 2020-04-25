#!/bin/bash -x
function firstName() {
pat="^[A-Z][a-zA-Z]{3,}$"
if [[ $fname =~ $pat ]]
then
	echo Valid
else
	echo Not Valid
fi
}

function lastName() {
pat="^[A-Z][a-zA-Z]{3,}$"
if [[ $lname =~ $pat ]]
then
        echo Valid
else
        echo Not Valid
fi
}

read -p "Enter First Name: " fname
firstName
read -p "Enter Last Name: " lname
lastName
