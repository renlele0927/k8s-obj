#! /bin/bash
kubectl create -f k8s-obj-dev.yaml
kubectl create -f k8s-obj-dev-svc.yaml
if [ $? -ne 0 ]
then
  echo $?
  echo "rolling-update" 
  kubectl rolling-update k8s-obj-dev --image=$1
fi
