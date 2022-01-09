#!/bin/bash

#Generate a private key for api-server
openssl genrsa -out api-server.key 2048

#Request a CSR for api-server with the generated private key
openssl req -new -key api-server.key \
    -subj "/CN=api-server/O=system:api-server" -out api-server.csr

#Generate a cerficate by using the CA's root certificate and private key
openssl x509 -req -in api-server.csr -CA ca.crt -CAkey ca.key -out api-server.crt -CAcreateserial 