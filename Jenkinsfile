
pipeline {
    agent any
    environment {
        AWS_REGION = 'us-east-1'
    }
    stages {
        stage('Checkout SCM') {
            steps {
                script {
                    echo "Checkout from SCM"
                    checkout scm
                }
            }
        }

        stage('Terraform Init') {
            steps {
                dir('eks') {
                    withCredentials([aws(credentialsId: 'aws-cred', region: AWS_REGION)]) {
                        sh "terraform init"
                    }
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir('eks') {
                    sh "terraform plan"
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                dir('eks') {
                    sh "terraform apply --auto-approve"
                }
            }
        }

        stage('Terraform Destroy') {
            steps {
                dir('eks') {
                    sh "aws eks update-kubeconfig --name my-eks-cluster --region ${AWS_REGION}"
                    sh "kubectl get nodes"
                    input message: 'Finished using the EKS cluster? (Click "Proceed" to continue)'
                    sh "terraform destroy -auto-approve"
                }
            }
        }
    }
}
