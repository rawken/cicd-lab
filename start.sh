#!/bin/sh

kind create cluster --wait 20s
kubectl get nodes
kind delete cluster
