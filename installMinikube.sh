echo "***** Installing Minikube ****"
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
sudo dpkg -i minikube_latest_amd64.deb
minikube start -p multinode-demo
echo "***** Adding 2 worker nodes to the Cluster *****"
minikube node add --worker -p multinode-demo
minikube node add --worker -p multinode-demo
