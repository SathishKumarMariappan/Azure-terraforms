pipeline {
    agent any

    stages {
        stage('Clone Git Repo') {
            steps {
                git branch: 'main', credentialsId: 'b9eb579b-e36c-478a-aa59-1790881a70c0', url: 'https://github.com/SathishKumarMariappan/Azure-terraforms.git'
            }
        }
        stage('Version') {
            steps {
                sh ''' 
                terraform version
                    az --version              
                '''
            }
        }
        stage('Init') {
            steps {
                sh 'terraform init'
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


