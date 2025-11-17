This will create the vCluster. Now we can see multiple contexts after the command finishes and the vCluster is created.

`kubectx`{{exec}}

Now we are using the `vcluster_demo_demo_kubernetes-admin@kubernetes` context.

Then we can take a look at the CRDs and Namspaces that exist in the vCluster.

`kubectl get crd`{{exec}}

`kubectl get namespaces`{{exec}}

We can also list the virtual clusters that have been created.

`vcluster list`{{exec}}