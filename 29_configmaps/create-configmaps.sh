#!/bin/bash

# Syntax
kubeclt create configmap \
    <config-name> --from-literal=<key>=<value>

# Create a configmap
kubeclt create configmap \
    app-config --from-literal=APP_COLOR=blue

# Configmaps with multiple values 
kubeclt create configmap \
    app-config --from-literal=APP_COLOR=blue \
               --from-literal=APP_MOD=prod

# Configmap with file syntax
kubeclt create configmap \
    app-config --from-file=<path-to-file>

kubeclt create configmap \
    app-config --from-file=app_config.properties 