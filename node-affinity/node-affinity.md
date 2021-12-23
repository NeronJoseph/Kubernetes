In this section, we are looking into NodeAffinity. The limitations of nodeSelector can be overcome using nodeAffinity. 

The sample provided in the file 'node-affinity-in-operator.yml' shows how can we deploy pods to nodes with labels 'large' and 'medium'. 

The sample provided in the file 'node-affinity-notin-operator.yml' shows how can we not deploy pods to nodes with label 'small'. 

The sample provided in the file 'node-affinity-exists-operator.yml' shows the pods will get deployed to nodes that contains labels with key 'size'. 