# Cryptography Assignment - OpenSSL Scripts

This repository contains scripts and instructions for a cryptography assignment using OpenSSL. The scripts are designed to generate key pairs, encrypt and decrypt files, and create and verify digital signatures.

## Key Generation

Execute the following commands to generate a public and private key pair:

### Generate private key
This code uses OpenSSL to generate an RSA private key with a length of 3072 bits, saved as `privateKey.pem`. 
```bash
openssl genrsa -out privateKey.pem 3072
```

### Generate corresponding public key
 This code uses OpenSSL to derive the corresponding RSA public key from the previously generated private key `privateKey.pem`. The resulting public key is saved as `publicKey.pem`.
```bash
openssl rsa -in privateKey.pem -pubout -out publicKey.pem
```

## Batch Processing with Encryption and Decryption

### Batch Encryption (batch_encrypt.sh)
The script batch_encrypt.sh encrypts all .txt files in the current directory using a given public key (publicKey.pem).
```bash
./batch_encrypt.sh
```

### Batch Decryption (batch_decrypt.sh)
The script batch_decrypt.sh decrypts all .encrypted files in the current directory using a given private key (privateKey.pem) and saves them with a .decrypted.txt extension.
```bash
./batch_decrypt.sh
```

## Digital Signatures

### Create Digital Signature (signature_timestamp.sh)
The script create_signature.sh appends the current timestamp to a file, creating a digital signature.
```bash
./signature_timestamp.sh
```

### Verify Digital Signature (verify_extract_timestamp.sh)
The script verify_signature.sh verifies the digital signature, extracts, and displays the timestamp.
```bash
./verify_extract_timestamp.sh
```

## Contributing
- Feel free to contribute by suggesting improvements, reporting issues, or submitting pull requests.
- Make sure to update any placeholders like `publicKey.pem` and `privateKey.pem` with your actual file names. This template provides a brief overview of each script and how to execute them. Users can quickly understand the purpose of each script and how to use them.



