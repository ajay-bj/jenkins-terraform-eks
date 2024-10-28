# jenkins-terraform-eks

This repository contains the code for deploying an Amazon EKS (Elastic Kubernetes Service) cluster using Terraform. The deployment process involves setting up an EC2 instance to run Jenkins, which then automates the creation and management of the EKS cluster through a CI/CD pipeline.

## Repository Structure

- `eks/ folder  Contains the Terraform files needed to create the EKS cluster.
-  jenkins-file

## Deployment Steps

### 1. Prerequisites

Before starting the deployment, ensure you have the following:

- An AWS Account
- AWS Root Account Access Keys
  
- terraform installation
  https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

- reffrence video guide
  https://www.youtube.com/watch?v=q6tjkmX_DPM&t=1100s

- s3 & dynamodb state lock + backend guide
  https://developer.hashicorp.com/terraform/language/backend/s3
  https://medium.com/@chauhanhimani512/how-to-provision-amazon-eks-cluster-using-terraform-aa96d9a00391


#### Generating Root Account Access Keys

To generate root account access keys for the AWS CLI:

1. Sign in to the AWS Management Console as the root user.
2. Navigate to the IAM (Identity and Access Management) service.
3. In the navigation pane, choose "Users" and then select your root user.
4. Choose the "Security credentials" tab, and then under "Access keys for CLI, SDK, & API access," choose "Create access key."
5. Download the .csv file to store your access key ID and secret access key.

### 2. Deploy EC2 Instance for Jenkins

The first step is to deploy an EC2 instance that will run Jenkins. This instance will have user data that installs Terraform, kubectl, Jenkins, and the AWS CLI.

1. Navigate to the `jenkins-server` ec2 .

3. - terraform installation
  https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
2. Initialize and apply the Terraform configuration:

   ```bash
   terraform init
   terraform apply
   terraform destroy
