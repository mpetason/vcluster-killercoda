# Create a Deployment

Next we will create an NGINX deployment in the vCluster. 

`kubectl create deployment nginx --image=nginx`{{exec}}

Let's take a look at what pods are running.

`kubectl get pods`{{{exec}}}

We can describe the pod to get more information, such as Events. This is a quick way to see if there are any issues or troubleshoot pods that are in a non-running state.

`kubectl describe pod nginx`{{exec}}

Now that we have a pod running we will disconnect from the vCluster to see what it looks like on the host cluster.

`vcluster disconnect`{{exec}}

Let's get the namespaces so that we can find where our vCluster pods are running.

`kubectl get namespace`{{exec}}

Now let's see what pods are running in the Namespace.

`kubectl get pod -A`{{exec}}