# PreReqs
- If you are using a Debian based VM you can use the script prepare_env.sh to install Prereqs automatically.
- Install Dockers from the following URL if you are not using a debian based VM:
  https://docs.docker.com/engine/install/debian/
- Install Minikube from the following URL if you are not using a debian based VM:
  https://minikube.sigs.k8s.io/docs/start/?arch=%2Fmacos%2Farm64%2Fstable%2Fbinary+download

Deploy Application:
- Go to IAC folder and run terraform init, terraform apply commands to create application.
- Run command to Open ArgoCD UI: `kubectl port-forward svc/argocd-server -n argocd --address 0.0.0.0 8080:80`
- Run command to Open Application UI: `kubectl port-forward svc/argocd-server -n argocd --address 0.0.0.0 8081:80`

# Simple Microservice Setup FrontEnd

- Set Env variable under deployment manifest file under argocd/app/deploymentManifests.yml
    - Linux/Max : `API_GATEWAY=http://YOUR_HOST`
    * Remember no / at the end of the URL to get your web app work
      
#Resources
https://kubernetes.io/docs
https://dev.to/sagarjadhv23/executing-shell-script-in-terraform-via-null-resource-872
https://zeet.co/blog/kubernetes-deployment-template
https://spacelift.io/blog/argocd-terraform
