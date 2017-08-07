#!/bin/bash

#In the following 3 files, paste your information from Red Hat Connect
#In pid.txt - paste your pXXXXXX number
#In secret.txt -paste your registry key - the long string
#In docker_image_digest.txt - paste your docker image digest - which the the sha256:xxxxxxxxx

#This script will output lots of information, but the information that you would need to be concerned with
#is the last few lines of the script
#if you see this:

#{
#    "rebuild": "none"
#}

#This means your image is up to date and does not need to be rebuilt
#however, if you see

#"rebuild":"recommended"
# You should rebuild and re-push/publish your image

PID=$(<pid.txt)
SECRET=$(<secret.txt)
DOCKER_IMAGE_DIGEST=$(<docker_image_digest.txt)

http --pretty=all  POST https://connect.redhat.com/api/container/status -- pid=$PID secret=$SECRET docker_image_digest=$DOCKER_IMAGE_DIGEST
