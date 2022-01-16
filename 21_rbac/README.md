# Roles and Role Bindings

This section shows how a Role can be created and how we can bind a user to a created Role. 

The file 'developer-role.yml' file is used to create a new role and file 'devuser-developer-binding.yml' is used to bind the role to a user. 

Create the role and role bindings using the commands below: 
```
kubectl create -f developer-role.yml
kubectl create -f devuser-developer-binding.yml
```
