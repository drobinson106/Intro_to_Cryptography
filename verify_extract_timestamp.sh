#!/bin/bash
#
#Allows the user to input the public key as the first argument
publicKey=$1

#Allows the user to input the signed file into as the second argument
fileSigned=$2

#Allows the user to input the ditigal signature as the third argument
signatureFile=$3

#Verifies the file signature then uses grep/echo to extract and display the timestamp
if openssl dgst -verify "$publicKey" -signature "$signatureFile" "$fileSigned"; then
	timestamp=$(grep "Timestamp:" "$fileSigned")
	echo "Timestamp of file signing: $timestamp"
fi

