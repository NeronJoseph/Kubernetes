In this section, we are looking at Taints and Tolerations. 

We can apply a taint to a node by the following command: 
$ kubectl taint node <node-name> <taint-key>:<taint-value>:taint-effect

Example: 
$ kubectl taint node node01 color=blue:NoSchedule

Available Taint effects are:
1. NoSchedule
2. PreferNoSchedule
3. NoExecute