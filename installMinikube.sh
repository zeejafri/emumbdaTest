echo "***** Installing Minikube ****"
#curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
#sudo dpkg -i minikube_latest_amd64.deb
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64
sleep 10
minikube start -p multinode-demo
sleep 5
echo "***** Adding 2 worker nodes to the Cluster *****"
minikube node add --worker -p multinode-demo
minikube node add --worker -p multinode-demo
sleep 5
echo "**** Setting up kubectl Binary *****"
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo chmod +x kubectl
sudo mv kubectl /usr/bin
sleep 5
echo " "
echo " "
echo " "
kubectl get nodes
sleep 130
kubectl create ns argocd
kubectl create ns myapp
kubectl apply -f ../argocd/config/argocd-app.yml
