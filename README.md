# Cryptography Assignment - OpenSSL Scripts

This repository contains scripts and instructions for a cryptography assignment using OpenSSL. The scripts are designed to generate key pairs, encrypt and decrypt files, and create and verify digital signatures.

## Key Generation

Execute the following commands to generate a public and private key pair:

### Generate private key
```bash
openssl genrsa -out privateKey.pem 3072
```

### Generate corresponding public key
```bash
openssl rsa -in privateKey.pem -pubout -out publicKey.pem
```Batch

### Encryption (batch_encrypt.sh)
The script batch_encrypt.sh encrypts all .txt files in the current directory using a given public key (publicKey.pem).

./batch_encrypt.sh
Batch Decryption (batch_decrypt.sh)
The script batch_decrypt.sh decrypts all .encrypted files in the current directory using a given private key (privateKey.pem) and saves them with a .decrypted.txt extension.

./batch_decrypt.sh
Create Digital Signature (create_signature.sh)
The script create_signature.sh appends the current timestamp to a file, creating a digital signature.

./create_signature.sh

Verify Digital Signature (verify_signature.sh)
The script verify_signature.sh verifies the digital signature, extracts, and displays the timestamp.

./verify_signature.sh

Contributing
Feel free to contribute by suggesting improvements, reporting issues, or submitting pull requests.

Make sure to update any placeholders like `publicKey.pem` and `privateKey.pem` with your actual file names. This template provides a brief overview of each script and how to execute them. Users can quickly understand the purpose of each script and how to use them.



