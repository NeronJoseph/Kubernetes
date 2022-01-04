A pool of volume that can be used by applications

Access modes: 
1. ReadOnlyMany
2. ReadWriteOnce
3. ReadWriteMany

Create volume: 
$ kubectl create -f pv-definition.yml 

Get the details of volume: 
$ kubectl get persistentvolume