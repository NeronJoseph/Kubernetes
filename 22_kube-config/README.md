# KubeConfig

This section shows the details about kubeconfig, its structure, sections in the configuration file, etc. 

### The main sections under the kube config files are: 
1. apiVersion 
2. kind 
3. clusters
4. contexts
5. users
6. current-contexts

We can see a sample config file in this directory with filename **_'sample-kube-config-file.yml'_**

 ### View the config file using the command
 ```
 $ kubectl config view
 ```

### Change the current context, use this command
```
$ kubectl config use-context <context-name>
```

### Find other config commands
```
$ kubectl config -h
```

