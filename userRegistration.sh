#!/bin/bash -x
function firstName() {
pat="^[A-Z]+[a-zA-Z]{2,}$"
if [[ $fname =~ $pat ]]
then
	echo Valid
else
	echo Not Valid
fi
}

function lastName() {
pat="^[A-Z]+[a-zA-Z]{2,}$"
if [[ $lname =~ $pat ]]
then
        echo Valid
else
        echo Not Valid
fi
}

function email(){
pat="^[a-zA-Z0-9]+([._+-][a-zA-Z0-9]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})*$"
if [[ $email =~ $pat ]]
then
        echo valid
else
        echo notvalid
fi
}

read -p "Enter First Name: " fname
firstName
read -p "Enter Last Name: " lname
lastName
read -p "Enter ur Email: " email
email
