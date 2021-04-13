
#!/bin/sh
#DHE-RSA-AES256-SHA256
IN_FILE=$1
#openssl aes-256-cbc -a -salt -in secrets.txt -out secrets.txt.enc
openssl aes-256-cbc -a -salt --iter 2021 -in $IN_FILE -out ${IN_FILE}_enc

# decrypt
#openssl aes-256-cbc -d -a -in secrets.txt.enc -out secrets.txt.new