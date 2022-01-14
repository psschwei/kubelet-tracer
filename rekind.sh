#!/bin/bash
set -ex
kind delete cluster
kind build node-image --image quay.io/psschwei/kind:head ~/go/src/k8s.io/kubernetes
kind create cluster --wait 30s --config kind.yaml
notify-send "Kind cluster done!"
