# app-api-proxy
NGINX proxy for a web-app

## Description
This project creates a NGINX proxy deploy in AWS ECR.

## Requirements
* AWS credentials that allows you to create ECR and IAM policy

## Setup
* Deploy the services in AWS
    * In the deploy section of this repo run
        *  `make tf-validate` 
        *  `make tf-apply`
    * This will create a new ECR repository and a policy
* Create a new User in the AWS Management console and add the policy, the user only needs programatic access
* Add the credentials to the github Actions
