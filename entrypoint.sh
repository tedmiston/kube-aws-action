#!/bin/bash -l

env | grep INPUT

clusterName=$INPUT_CLUSTERNAME
clusterDirName=$INPUT_CLUSTERDIRNAME

FOO_BAR=$FOO_BAR

kube-aws version

mkdir $clusterDirName
cd $clusterDirName
pwd
