echo "***** Installing Minikube ****"
#curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
#sudo dpkg -i minikube_latest_amd64.deb
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64

minikube start -p multinode-demo
echo "***** Adding 2 worker nodes to the Cluster *****"
minikube node add --worker -p multinode-demo
minikube node add --worker -p multinode-demo
