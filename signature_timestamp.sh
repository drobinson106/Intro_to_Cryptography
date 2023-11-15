#!/bin/bash

#Allows the user to input their desired file to sign as the first argument 
fileToSign=$1

#Allows the user to input their private key as the second argument 
privateKey=$2

#Declares a variable for the current time and appends it to the file
timestamp=$(date)
echo "Timestamp: $timestamp" >> "$fileToSign"

#Creates a ditigal signature of the file using the private key above
openssl dgst -sign "$privateKey" -out "$fileToSign.sign" "$fileToSign"

echo "File $fileToSign has been signed with a timestamp"
