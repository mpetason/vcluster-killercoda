# Create a Deployment

Next we will create an NGINX deployment in the vCluster. 

`kubectl create deployment nginx --image=nginx`{{exec}}

This will create a new deployment, which we can see by running:

`kubectl get deployment`{{exec}}

Let's take a look at what pods are running.

`kubectl get pods`{{exec}}

We can describe the pod to get more information, such as Events. This is a quick way to see if there are any issues or troubleshoot pods that are in a non-running state.

`kubectl describe pod nginx`{{exec}}

Now that we have a pod running we will disconnect from the vCluster to see what it looks like on the host cluster.

`vcluster disconnect`{{exec}}

Let's get the namespaces so that we can find where our vCluster pods are running.

`kubectl get namespace`{{exec}}

We can see the `demo` namespace, which is the namespace we used to create the vCluster.

What about if we want to see the deployment? The deployment only exists in the vCluster, the resources created by the deployment will exist on the host cluster. If we run this command we won't actually see the deployment:

`kubectl get deployment`{{exec}}

We can see the resources that are created by it, such as the Pod.

`kubectl get pods -n demo`{{exec}}