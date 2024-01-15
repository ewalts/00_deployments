#!/bin/bash
###############################################################################################
###> New x bash -> create_certs.sh  -> Initial creation user => eric => 2023-12-16_06:46:05 ###
###############################################################################################
#_#>

date=$(date +%Y-%m-%d)
subj="/C=US/ST=Hawaii/L=Honolulu/O=RWI/OU=IT Department/CN=rewbin.org"

mkdir newcerts_$date && cd newcerts_$date

printf "Generate key for CA ca-key.pem"
openssl genrsa 2048 > ca-key.pem

printf "Create CA certificate with ca key ca.pem\n"
openssl req -new -x509 -nodes -days 3600 -key ca-key.pem -out ca.pem -subj "$subj"
#openssl req -new -x509 -nodes -days 3600 -key ca-key.pem -out ca.pem -subj "/C=US/ST=Hawaii/L=Honolulu/O=RWI/OU=IT Department/CN=rewbin.org"


printf "\n Create server certificate, remove passphrase, and sign it server-cert.pem = public key, server-key.pem = private key"

subj="/C=US/ST=Hawaii/L=Honolulu/O=RWI/OU=IT Department/CN=mysql-w2-01.rewbin.org"

printf " \nCreate server-key.pem"
openssl req -newkey rsa:2048 -days 3600 -nodes -keyout server-key.pem -out server-req.pem -subj "$subj"

printf "\nCreate rsa in server-key out server-key"
openssl rsa -in server-key.pem -out server-key.pem

printf "\ncreate server 509 certificate"
openssl x509 -req -in server-req.pem -days 3600 -CA ca.pem -CAkey ca-key.pem -set_serial 01 -out server-cert.pem 



printf "\n Create client certificate, remove passphrase, and sign it  client-cert.pem = public key, client-key.pem = private key"

subj="/C=US/ST=Hawaii/L=Honolulu/O=RWI/OU=IT Department/CN=zion.rewbin.org"
openssl req -newkey rsa:2048 -days 3600  -nodes -keyout client-key.pem -out client-req.pem -subj "$subj"

printf "\nrsa client in client key out"
openssl rsa -in client-key.pem -out client-key.pem

printf "\ncreate client 509 cert"
openssl x509 -req -in client-req.pem -days 3600 -CA ca.pem -CAkey ca-key.pem -set_serial 01 -out client-cert.pem 

