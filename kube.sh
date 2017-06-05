set -x
sudo apt install make
sudo curl -O https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz
sudo tar -xvf go1.8.3.linux-amd64.tar.gz > /dev/null
sudo mv go /usr/local/
export PATH=$PATH:/usr/local/go/bin
export GOPATH=`pwd`/goWorkspace
go get -d k8s.io/kubernetes
cd $GOPATH/src/k8s.io/kubernetes
CGO_ENABLED=0
go install -a -installsuffix cgo std
make
