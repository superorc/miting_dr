#!/bin/sh
#DHE-RSA-AES256-SHA256
set -e
IN_FILE=$1

# decrypt
openssl aes-256-cbc -d -a --iter 2021 -in $IN_FILE -out $IN_FILE.keys


echo "------------------------------------------------------------"
echo "Pozdravlenia, smotri clear text txt wallet file: $IN_FILE.keys"
echo "------------------------------------------------------------"
