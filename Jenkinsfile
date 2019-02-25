pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Restore Orginal Database') {
            steps {
                echo 'Restoring db..'
                sh "./scripts/restore_original_db.sh"
            }
        }
        
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
