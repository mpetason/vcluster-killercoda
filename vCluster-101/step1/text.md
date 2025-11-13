# Install vCluster CLI

To install vCluster CLI, run the following command:

`curl -L -o vcluster "https://github.com/loft-sh/vcluster/releases/latest/download/vcluster-linux-amd64" && sudo install -c -m 0755 vcluster /usr/local/bin && rm -f vcluster`{{exec}}

Verify the installation by checking the vCluster version:

`vcluster --version`{{exec}}

This should output the installed version of vCluster.

### View the current context

With kubectx we can check the current contest to see which Kubernetes API endpoint we are currently using:

`kubectx`{{exec}}