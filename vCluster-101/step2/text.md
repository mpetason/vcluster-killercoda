# Deploy a vCluster

As you can see from the previous kubectx command we are using the context:

The context will be kubernetes-admin@kubernetes.

Now let's take a look at the namespaces and CRDs on the host cluster. Since a vCluster creates a new virutal kubernetes cluster, we're going to get a brand new API endpoint with a database backing it. This means that we will have different namespaces, CRDs, and other resources that are not 1:1 with the host cluster. 

`kubectl get crds`{{exec}}

`kubectl get namespaces`{{exec}}

Now we can deploy a vCluster. We're going to run the same command that shows up in the quickstart guide. In future scenarios we will dive into the vCluster.yaml to customize the installation.

`vcluster create demo --namespace demo`{{exec}}

This will create the vCluster. Now we can see multiple contexts after the command finishes and the vCluster is created.

`kubectx`{{exec}}

Now we are using the `vcluster_demo_demo_kubernetes-admin@kubernetes` context.

Then we can take a look at the CRDs and Namspaces that exist in the vCluster.

`kubectl get crd`{{exec}}

`kubectl get namespaces`{{exec}}

We can also list the virtual clusters that have been created.

`vcluster list`{{exec}}