#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=abc1zbq/udacity-04

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create namespace dev || true
helm upgrade -n dev --install udacity-04 -f udacity-04/values.yaml udacity-04

# Step 3:
# List kubernetes pods
kubectl get pods -A
kubectl get pods -n dev
# Step 4:
# Forward the container port to a host

# no need, I use helm and forward use nodeport

