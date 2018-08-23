#! /bin/bash
kubectl create -f k8s-obj-online.yaml
kubectl create -f k8s-obj-online-svc.yaml
if [ $? -ne 0 ]
then
  echo $?
  echo "rolling-update" 
  kubectl rolling-update k8s-obj-online --image=$1
fi
