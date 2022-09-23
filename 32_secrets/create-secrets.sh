#!/bin/bash

# Create secret syntax
kubectl create secret generic \
    <secret-name> --from-literal=<key>=<value>

kubectl create secret generic \
    app-secret --from-literal=DB_Host=mysql

kubectl create secret generic \
    app-secret  --from-literal=DB_Host=mysql
                --from-literal=DB_User=root
                --from-literal=DB_Pass=passwrd

# Create secret from file 
kubectl create secret generic \
    <secret-name> --from-file=<path-to-file>

kubectl create secret generic \ 
    app-secret --from-file=app_secret.properties 