#!/bin/bash

#Generate private key for CA using openssl
openssl genrsa -out ca.key 2048

#Generate certificate signing request with the created CA private key
openssl req -new -key ca.key -subj "/CN=KUBERNETES-CA" -out ca.csr

#Sign the certificate using openssl x509 command with csr that we requested
openssl x509 -req -in ca.csr -signkey ca.key -out ca.crt