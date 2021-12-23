For the node selector to work, we need to label the nodes first. 
Nodes can be labelled using the below command: 

$ kubectl label node <node-name> <label-key>=<label-value>

An example of labelling a node named node01 with size large is given below: 
$ kubectl label node node01 size=large

Once we labelled the node, we can select the node by using the keyword 'nodeSelector' in the definition file. 
The example for that definition file is given in the file named 'node-selector.yml' in the current directory. 