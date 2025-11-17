# Deploy a vCluster

As you can see from the previous kubectx command we are using the context:

The context will be kubernetes-admin@kubernetes.

Now let's take a look at the namespaces and CRDs on the host cluster. Since a vCluster creates a new virutal kubernetes cluster, we're going to get a brand new API endpoint with a database backing it. This means that we will have different namespaces, CRDs, and other resources that are not 1:1 with the host cluster. 

`kubectl get crds`{{exec}}

`kubectl get namespaces`{{exec}}

Now we can deploy a vCluster. We're going to run the same command that shows up in the quickstart guide. In future scenarios we will dive into the vCluster.yaml to customize the installation.

`vcluster create my-vcluster --namespace team-x`{{exec}}

