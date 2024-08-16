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
                sh 'terraform init -upgrade'
            }
        }
        stage('Clean up ') {
            steps {
                sh 'terraform destroy -auto-approve'
            }
        }
        stage('validate') {
            steps {
                sh 'terraform validate'
            }
        }
        stage('Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}


