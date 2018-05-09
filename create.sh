#!/bin/bash

# Way too simple serverless stack builder, ideally this would be called with Jenkins, CodeDeploy, etc but we'll use HumanCD here

# Checking for AWS CLI
command -v aws >/dev/null 2>&1 || { echo >&2 "ERROR: AWS CLI was not found. Please install or ensure that it's in your PATH."; exit 1; }

# Check for Node
command -v node >/dev/null 2>&1 || { echo >&2 "ERROR: Node was not found. Please install or ensure that it's in your PATH."; exit 1; }

# Check for access
aws iam get-user | grep 'error' &> /dev/null
if [ $? == 0 ]; then
   echo "ERROR: Your default AWS profile doesn't have the correct permissions. Make sure you have an account with the Administrator role and you've run aws configure."
   exit 1
fi

# Setup Serverless
command -v serverless >/dev/null 2>&1 || { echo "Installing Serverless NPM..";npm install -g serverless; }

# Deploy the Serverless app
echo "Deploying the serverless application..."
serverless deploy

# Get the generated endpoint
printf "\nYou can access the website at the URL below\n"
serverless info --verbose | grep ServiceEndpoint | sed s/ServiceEndpoint\:\ //g | awk '{print $1"/genIndex"}'
