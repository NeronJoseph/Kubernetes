#!/bin/bash 

# View rollout status 
kubectl rollout status deployment/<deployment-name> 

# Show the history of rollouts
kubectl rollout history deployment/<deployment-name> 

# After rolling updates, you can see the new replica-set using this command: 
kubectl get replicasets 

# Rollback to previous version 
kubectl rollout undo deployment/<deployment-name> 