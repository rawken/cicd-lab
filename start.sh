#!/bin/sh

kind create cluster --wait
kubectl get nodes
kind delete cluster
