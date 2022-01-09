#!/bin/bash

#Generate a private key for kube-scheduler
openssl genrsa -out kube-scheduler.key 2048

#Request a CSR for kube-scheduler with the generated private key
openssl req -new -key kube-scheduler.key \
    -subj "/CN=kube-scheduler/O=system:kube-scheduler" -out kube-scheduler.csr

#Generate a cerficate by using the CA's root certificate and private key
openssl x509 -req -in kube-scheduler.csr -CA ca.crt -CAkey ca.key -out kube-scheduler.crt -CAcreateserial 