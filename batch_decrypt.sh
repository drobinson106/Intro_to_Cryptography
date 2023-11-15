#!/bin/bash
#
#Creates a command line argument that allows the user to input their private key
privateKey=$1

#Loops through the directory looking for .encrypted files then using OpeSSL decrypts them with the inputted private key
for file in "$PWD"/*.encrypted; do
	if [ -f "$file" ]; then 
		openssl pkeyutl -decrypt -inkey "$privateKey" -in "$file" -out "${file%.encrypted}.decrypted.txt"
	fi
done
echo "Decryption Complete"
