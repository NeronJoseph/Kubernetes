#!/bin/bash

#Check access to create deployments
kubectl auth can-i create deployments

#Check access to delete nodes
kubectl auth can-i delete nodes

#Check access to create deployments as dev-user from current user without switching to dev-user
kubectl auth can-i create deployments --as dev-user 

#Check access to create pods as dev-user
kubectl auth can-i create pods --as dev-user 

#Check access to create pods as dev-user under the test namespace 
kubectl auth can-i create pods --as dev-user --namespace test 