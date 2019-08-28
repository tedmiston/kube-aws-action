#!/bin/bash -l

kube-aws version

mkdir my-cluster
cd my-cluster

echo 1 clusterName=$1
echo 2 clusterName=$INPUT_CLUSTER_NAME
echo 3 clusterName=$INPUT_CLUSTERNAME
echo FOO_BAR=$FOO_BAR
echo clusterDirName=$INPUT_CLUSTERDIRNAME
