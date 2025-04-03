#!/bin/bash
pin="2025"
echo -n "Please enter your pinnumber: "
read -s pinnumber
if [[ "pinnumber" -eq "$pin" ]]; then
	echo "Welcome to bank of America"
else
	echo "Sorry, incorrect pin: please try again"
fi 
