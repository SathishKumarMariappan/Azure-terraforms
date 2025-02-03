pipeline {
    agent any

    stages {

        stage('Version') {
            steps {
                bat 'az --version'          
            }
        }
        stage('Init') {
            steps {
                bat '''cd terraform
                    terraform init'''
            }
        }
        stage('Init - ugrade') {
            steps {
                bat '''cd terraform
                terraform init -upgrade'''
            }
        }
        stage('Clean up ') {
            steps {
                bat '''cd terraform
                terraform destroy -auto-approve'''
            }
        }
        stage('validate') {
            steps {
                bat '''cd terraform
                terraform validate'''
            }
        }
        stage('Deploy') {
            steps {
                bat '''cd terraform
                terraform apply -auto-approve'''
            }
        }
    }
}


