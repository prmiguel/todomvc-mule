pipeline {
    agent any
    
    options {
    timeout(time: 5, unit: 'MINUTES')
  }
    stages {
        stage("Build Backend Container") {
            steps {
                sh '''
                docker build -f app/db/Dockerfile -t todomvc-db app/db
                docker build -f app/backend/Dockerfile -t todomvc-backend:latest app/backend
                '''
            }
        }
    }
}
