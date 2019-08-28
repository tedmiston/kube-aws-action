#!/bin/bash -l

kube-aws version

clusterName=$INPUT_CLUSTERNAME
clusterDirName=$INPUT_CLUSTERDIRNAME

FOO_BAR=$FOO_BAR

env | grep INPUT

mkdir $clusterDirName
cd $clusterDirName
pwd
