#!/bin/bash
#
#Declares a command line argument  that represents the filepath for the public key
publicKey=$1

#Loops through the current directory looking for .txt files and using OpenSSL encrypts them with the public key above
for file in "$PWD"/*.txt; do
	if [ -f "$file" ]; then
		openssl pkeyutl -encrypt -pubin -inkey "$publicKey" -in "$file" -out "${file%.txt}.encrypted"
	fi
done
echo "Encryption Complete"
