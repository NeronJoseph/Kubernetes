#!/bin/bash

# Get the performance metrics of node 
kubectl top node 

# Get the performance metrics of pods
kubectl top pod --all-namespaces 