#!/bin/bash

#Generate a private key for kube-controller-manager
openssl genrsa -out kube-controller-manager.key 2048

#Request a CSR for kube-controller-manager with the generated private key
openssl req -new -key kube-controller-manager.key \
    -subj "/CN=kube-controller-manager/O=system:kube-controller-manager" -out kube-controller-manager.csr

#Generate a cerficate by using the CA's root certificate and private key
openssl x509 -req -in kube-controller-manager.csr -CA ca.crt -CAkey ca.key -out kube-controller-manager.crt -CAcreateserial 