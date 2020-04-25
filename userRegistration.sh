#!/bin/bash -x

function firstName() {
pat="^[A-Z][a-z]{3,}$"
if [[ $fname =~ $pat ]]
then
	echo Valid
else
	echo Not Valid
fi
}

function lastName() {
pat="^[A-Z][a-z]{3,}$"
if [[ $lname =~ $pat ]]
then
        echo Valid
else
        echo Not Valid
fi
}

function email(){
pat="^[a-zA-Z0-9]+([._+-][a-zA-Z0-9]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})?$"
if [[ $email =~ $pat ]]
then
        echo valid
else
        echo notvalid
fi
}

function mobile(){
pat="^[0-9]{2}[ ][0-9]{10}$"
if [[ $mobile =~ $pat ]]
then
	echo Valid
else
	echo Not Valid
fi
}

function password(){
rule1="[a-zA-Z0-9]{8,}"
rule2="[a-zA-Z0-9][A-Z][a-zA-Z0-9]*"
rule3="[a-zA-Z0-9]*[0-9][a-zA-Z0-9]*"
rule4="^[a-zA-Z0-9]*[@#$%&_-]{1}[a-zA-Z0-9]*"
if [[ $password =~ $rule1 && $password =~ $rule2 && $password =~ $rule3 && $password =~ $rule4 ]]
then
	echo Valid
else
	echo Not valid
fi
}

read -p "Enter First Name: " fname
firstName
read -p "Enter Last Name: " lname
lastName
read -p "Enter ur Email: " email
email
read -p "Enter ur Mobile Number : " mobile
mobile
read -p "Enter ur Password : " password
password
