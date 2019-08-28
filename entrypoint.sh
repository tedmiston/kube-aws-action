#!/bin/bash -l

kube-aws version

echo clusterName=$INPUT_CLUSTERNAME
echo clusterDirName=$INPUT_CLUSTERDIRNAME

echo FOO_BAR=$FOO_BAR

env | grep INPUT

mkdir $clusterDirName
cd $clusterDirName
pwd
