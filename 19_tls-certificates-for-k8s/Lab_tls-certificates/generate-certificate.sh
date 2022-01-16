#!/bin/bash

#As we have the CSR, generate the base64 encoded value of the csr for the manifest file
cat akshay.csr | bash64
#We need to add this value under the requests section under the manifest file 'certificate-signing-request-object.yml'

#Create the CSR object
kubectl create -f certificate-signing-request-object.yml

#Find the list of csr 
kubectl get csr 

#Approve the CSR by using this command
kubectl certificate approve akshay