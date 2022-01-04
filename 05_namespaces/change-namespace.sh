#!/bin/bash

# Change your namespace permanently to dev
kubectl config set-context $(kubectl config current-context) --namespace=dev