#!/bin/bash

# Create a POD
kubectl run nginx --image=nginx

# Generate POD Manifest yaml file
kubectl run nginx --image=nginx --dry-run=client -o yaml

# Create a Deployment
kubectl create deployment --image=nginx nginx 

# Generate Deployment YAML file
kubectl create deployment --image=nginx nginx --dry-run=client -o yaml

# Generate Deployment with 4 
kubectl create deployment --image=nginx --replicas=4 nginx

# Scale deployment 
kubectl scale deployment nginx --replicas=6

# Save YAML file 
kubectl create deployment nginx --image=nginx --replicas=4 -o yaml > deployment-definition.yaml

# Create a service with type ClusterIP
kubectl expose pod redis --port=6379 --name redis-service --dry-run=client -o yaml

# Other method of creating service
kubectl create service clusterip redis --tcp=6379:6379 --dry-run=client -o yaml