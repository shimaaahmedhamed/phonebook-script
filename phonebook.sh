#!/bin/sh

echo "******HI*******"

telebook=information
touch information

echo "-i to insert new contact"
echo "-v to view all saved contacts"
echo "-s to search by contant name"
echo "-e to delete all contacts"
echo "-d to delete specific contact"

echo "enter your choice: "
read x

case $x in
 
-i)
	echo "insert a new contact"
	read -p "Enter Full Name: " fullName
	read -p "Enter phone number: " Number
	echo $fullName $Number>>information
	echo "Name is added successfully";;


-v)
	echo "View all saved contacts"
	cat $telebook;;
	

-s)
        echo "For searching, follow the below"
	read -p "Enter Full Name : " search
	cat $telebook | grep $search;;

-e)
        echo "delete all contacts"
        rm $telebook
        echo "all contacts are deleted successfully";;

-d)
        echo "delete specific contact"
        read -p "Enter Full Name : " deletename
        read -p "Enter Number : " deletenumber
        cat $telebook | grep $deletename
        sed -i s/"$deletename"//g $telebook
        cat $telebook | grep $deletename
        sed -i s/"$deletenumber"//g $deletenumber;;
        
*)
        echo "Invalid";;
esac
























