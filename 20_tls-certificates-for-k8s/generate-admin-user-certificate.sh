#!/bin/bash

#Generate a private key for admin
openssl genrsa -out admin.key 2048

#Request a CSR for admin with the generated private key
openssl req -new -key admin.key \
    -subj "/CN=kube-admin/O=system:master" -out admin.csr

#Generate a cerficate by using the CA's root certificate and private key
openssl x509 -req -in admin.csr -CA ca.crt -CAkey ca.key -out admin.crt -CAcreateserial 