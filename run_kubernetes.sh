#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=shiv12234/uda-p4

# Step 2
# Run the Docker Hub container with kubernetes
alias kubectl="minikube kubectl --"
kubectl create deployment udacity --image=$dockerpath:latest


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/udacity 8000:80
