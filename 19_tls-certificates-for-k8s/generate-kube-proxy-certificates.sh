#!/bin/bash

#Generate a private key for kube-proxy
openssl genrsa -out kube-proxy.key 2048

#Request a CSR for kube-proxy with the generated private key
openssl req -new -key kube-proxy.key \
    -subj "/CN=kube-proxy/O=system:kube-proxy" -out kube-proxy.csr

#Generate a cerficate by using the CA's root certificate and private key
openssl x509 -req -in kube-proxy.csr -CA ca.crt -CAkey ca.key -out kube-proxy.crt -CAcreateserial 