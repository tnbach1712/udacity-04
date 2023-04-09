# !/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t udacity-04 .
# Step 2: 
# List docker images
echo $(docker images)
# Step 3: 
# Run flask app

# becuse I used port 80 for different application.
docker run -it --rm --name udacity-04 -p 8000:80 udacity-04  