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
                bat 'terraform init'
            }
        }
        stage('Init - ugrade') {
            steps {
                bat 'terraform init -upgrade'
            }
        }
        stage('Clean up ') {
            steps {
                bat 'terraform destroy -auto-approve'
            }
        }
        stage('validate') {
            steps {
                bat 'terraform validate'
            }
        }
    }
}


