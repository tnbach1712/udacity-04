#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=abc1zbq/udacity-04

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
# Login
tag=$dockerpath:$(date +%s)
docker login -u abc1zbq -p 6Den10kytu
docker tag udacity-04 $tag
# Step 3:
# Push image to a docker repository
docker image push $tag
docker image push udacity-04:latest