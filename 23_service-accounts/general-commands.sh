#!/bin/bash

#Create a service account with name sample-service-account
kubectl create serviceaccount sample-service-account

#View the list of service accounts
kubectl get serviceaccounts

#View the details of token created with service account 'sample-service-account'
kubectl describe serviceaccount sample-service-account

#View the details of token
kubectl describe secret sample-service-account-token        #The token name can be obtained by describing the service account