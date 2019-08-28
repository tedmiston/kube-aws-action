#!/bin/bash -l

echo test secret 1 is $TEST_SECRET
echo test secret 2 is $INPUT_TEST_SECRET

env | grep INPUT

clusterName=$INPUT_CLUSTERNAME
clusterDirName=$INPUT_CLUSTERDIRNAME

FOO_BAR=$FOO_BAR

kube-aws version

mkdir $clusterDirName
cd $clusterDirName
pwd
