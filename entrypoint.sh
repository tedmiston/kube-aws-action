#!/bin/bash -l

kube-aws version

mkdir my-cluster
cd my-cluster

echo 1 clusterName=$1
echo 2 clusterName=$INPUT_CLUSTER_NAME
