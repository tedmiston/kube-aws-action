#!/bin/bash -l

echo test secret 1 is $TEST_SECRET
echo test secret 2 is $INPUTSECRETTEST

env | grep INPUT

clusterName=$INPUT_CLUSTERNAME
clusterDirName=$INPUT_CLUSTERDIRNAME

FOO_BAR=$FOO_BAR


kube-aws version


mkdir $clusterDirName
cd $clusterDirName
pwd


# create cluster.yaml
kube-aws init \
--cluster-name=my-cluster \
--region=us-west-1 \
--availability-zone=us-west-1c \
--hosted-zone-id=TODO \
--external-dns-name=TODO \
--key-name=TODO \
--kms-key-arn=TODO \
--s3-uri=s3://examplebucket/mkdir


# generate assets - certificates
kube-aws render credentials --generate-ca


# generate assets - stack
kube-aws render stack


# view generated certificates
kube-aws show certificates


# validate configuration
kube-aws validate


# create cluster
# echo kube-aws apply
kube-aws apply --export


# access cluster
KUBECONFIG=kubeconfig kubectl get nodes --show-labels


# review changes
# TODO: programmatically change cluster.yaml eg asg size
kube-aws diff --context 3 --color


# update cloudformation stacks
kube-aws apply


# destroy cluster
# kube-aws destroy
