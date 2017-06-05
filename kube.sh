set -x
sudo curl -O https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz
mkdir go
sudo tar -xvf go1.8.3.linux-amd64.tar.gz > /go
export PATH=$PATH:/go/bin
export GOPATH=`pwd`/goWorkspace
go get -d k8s.io/kubernetes
cd $GOPATH/src/k8s.io/kubernetes
CGO_ENABLED=0 go install -a -installsuffix cgo std
make
