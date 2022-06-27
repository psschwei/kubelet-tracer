#!/bin/bash

kind delete cluster
kind build node-image --image quay.io/psschwei/kind:head /home/paulschw/go/src/k8s.io/kubernetes
kind create cluster --wait 60s --config kind.yaml
echo "Kind cluster done!"
