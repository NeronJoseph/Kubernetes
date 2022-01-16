#!/bin/bash

#Create cluster admin role
kubectl create -f cluster-admin-role.yml

#Create the role binding
kubectl create -f cluster-admin-role-binding.yml