#!/bin/bash

#View api-resources that comes under namespace scope
kubectl api-resources --namespaced=true

#View api-resources that comes under cluster scope (not namespaced)
kubectl api-resources --namespaced=false