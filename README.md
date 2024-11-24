# PreReqs
- If you are using a Debian12 based VM you can use the script prepare_env.sh to install Prereqs automatically.
- Install Dockers from the following URL if you are not using a debian based VM:
  https://docs.docker.com/engine/install/debian/
- Install Minikube from the following URL if you are not using a debian based VM:
  https://minikube.sigs.k8s.io/docs/start/?arch=%2Fmacos%2Farm64%2Fstable%2Fbinary+download

Deploy Minikube cluster manually (without prepare_env.sh)
- Assuming you have installed dockers and Minikube, you can follow the commands below to create a cluster:
  `minikube start -p multinode-demo`
- Add Worker Nodes to the cluster
  `minikube node add --worker -p multinode-demo`
- Go to IAC folder and run terraform init, terraform apply commands to create application.
- Run command to Open ArgoCD UI: `kubectl port-forward svc/argocd-server -n argocd --address 0.0.0.0 8080:80`

# Simple Microservice Setup FrontEnd

- Set Env variable under deployment manifest file under argocd/app/deploymentManifests.yml
    - Linux/Max : `API_GATEWAY=http://YOUR_HOST`
    * Remember no / at the end of the URL to get your web app work
