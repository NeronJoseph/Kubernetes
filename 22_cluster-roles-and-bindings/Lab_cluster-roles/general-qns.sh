#!/bin/bash

#How many ClusterRoles do you see defined in the cluster?
kubectl get clusterroles | wc -l #exclude the first line

#How many ClusterRoleBindings exist on the cluster?
kubectl get clusterrolebindings | wc -l #exclude the first line
