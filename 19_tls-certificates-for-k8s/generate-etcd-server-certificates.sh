#!/bin/bash

#Generate a private key for etcd-server
openssl genrsa -out etcd-server.key 2048

#Request a CSR for etcd-server with the generated private key
openssl req -new -key etcd-server.key \
    -subj "/CN=etcd-server/O=system:etcd-server" -out etcd-server.csr

#Generate a cerficate by using the CA's root certificate and private key
openssl x509 -req -in etcd-server.csr -CA ca.crt -CAkey ca.key -out etcd-server.crt -CAcreateserial 